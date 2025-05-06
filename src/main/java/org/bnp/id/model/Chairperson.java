package org.bnp.id.model;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;

/**
 * This is the class that will hold the chairperson's info. There shall only be one static _instance of this.
 * Cannot be instantiated, nor modified. All info is static and final.
 */
public class Chairperson extends org.bnp.id.model.Member {

    public static Chairperson _instance = new Chairperson();

    private Chairperson() {
        this.setLastName("Stuart");
        this.setFirstName("Salvacion");
        this.setMiddleName("Aguillon");
        this.setShortName("Ate Salve");
        this.setDateOfBirth(LocalDateTime.of(LocalDate.of(1949, 3, 14), LocalTime.MIN));
        this.setGender('F');
        this.setDateAdorer(LocalDateTime.of(LocalDate.of(1968, 4, 17), LocalTime.MIN));
        this.setDateHirang(LocalDateTime.of(LocalDate.of(1968, 4, 17), LocalTime.MIN));
        this.setDateCouncil(LocalDateTime.of(LocalDate.of(1968, 4, 17), LocalTime.MIN));
    }

    public static Chairperson getInstance() {
        return _instance;
    }
}
