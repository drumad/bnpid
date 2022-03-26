package org.bnp.id.controller;

import lombok.Getter;
import lombok.extern.log4j.Log4j2;
import org.bnp.id.model.Country;
import org.bnp.id.repo.CountryRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@RestController
@Log4j2
@Getter
public class CountryController {

    private Map<String, Country> countries;

    private final CountryRepository countryRepository;

    public CountryController(CountryRepository countryRepository) {

        this.countryRepository = countryRepository;

        try {
            loadCountries();
        } catch (SQLException e) {
            log.error(e.getMessage(), e);
        }
    }

    /**
     * Loads all the countries from the database.
     */
    public void loadCountries() throws SQLException {

        log.debug("Loading countries..");

        Collection<Country> countryList =
            StreamSupport.stream(countryRepository.findAll().spliterator(), false).collect(Collectors.toCollection(ArrayList::new));

        countries = countryList.stream().collect(Collectors.toMap(Country::getNiceName, Function.identity()));
    }

    @GetMapping("/countries/list")
    public String list() {

        return countries.values().stream().sorted(Comparator.comparingInt(Country::getId)).map(Country::getNiceName)
                        .collect(Collectors.joining("<br />"));
    }
}
