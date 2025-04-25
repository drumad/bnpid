package org.bnp.id.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import lombok.extern.log4j.Log4j2;
import org.bnp.id.repo.ChapterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.LinkedList;
import java.util.List;

@RestController
@Log4j2
@RequestMapping("/chapters")
public class ChapterController {

    private ChapterRepository chapterRepository;

    @Autowired
    public ChapterController(ChapterRepository chapterRepository) {

        this.chapterRepository = chapterRepository;
    }

    @GetMapping("list")
    public String list() {

        List<String> array = new LinkedList<>();
        ObjectMapper objMapper = new ObjectMapper();
        objMapper.registerModule(new JavaTimeModule());
        objMapper.disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
        chapterRepository.findAll().spliterator().forEachRemaining(c -> {
            try {
                array.add(objMapper.writeValueAsString(c));
            } catch (JsonProcessingException e) {
                log.error(e.getMessage(), e);
            }
        });

        log.debug(array.toString());

        return array.toString();
    }
}
