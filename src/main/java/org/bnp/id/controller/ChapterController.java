package org.bnp.id.controller;

import lombok.Getter;
import lombok.extern.log4j.Log4j;
import org.bnp.id.model.Chapter;
import org.bnp.id.repo.ChapterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.sql.SQLException;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@RestController
@Log4j
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
        chapters = StreamSupport.stream(chapterRepository.findAll().spliterator(), false).collect(Collectors.toMap(Chapter::getId, Function.identity()));
    }

    @GetMapping("/chapter/list")
    public String list() {

        return chapters.values().stream().map(Chapter::getName).collect(Collectors.joining("\n"));
    }
}
