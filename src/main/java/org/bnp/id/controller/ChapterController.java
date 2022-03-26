package org.bnp.id.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import lombok.Getter;
import lombok.extern.log4j.Log4j2;
import org.bnp.id.model.Chapter;
import org.bnp.id.repo.ChapterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@RestController
@Log4j2
@RequestMapping("/chapters")
public class ChapterController {

    @Getter
    private Map<Integer, Chapter> chapters;

    private ChapterRepository chapterRepository;

    @Autowired
    public ChapterController(ChapterRepository chapterRepository) {

        this.chapterRepository = chapterRepository;
        loadChapters();
    }

    public void loadChapters() {

        log.debug("Loading chapters...");

        if (chapters != null) {
            chapters.clear();
        }
        chapters = StreamSupport.stream(chapterRepository.findAll().spliterator(), false)
                                .collect(Collectors.toMap(Chapter::getId, Function.identity()));
    }

    @GetMapping("list")
    public String list() {

        List<String> array = new LinkedList<>();
        ObjectMapper objMapper = new ObjectMapper();
        objMapper.registerModule(new JavaTimeModule());
        objMapper.disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
        chapters.values().stream().forEach(c -> {
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
