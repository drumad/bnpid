package org.bnp.id.controller;

import lombok.Getter;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.bnp.id.exception.MemberNotFoundException;
import org.bnp.id.model.Chapter;
import org.bnp.id.model.Country;
import org.bnp.id.model.Member;
import org.bnp.id.repo.ChapterRepository;
import org.bnp.id.repo.CountryRepository;
import org.bnp.id.repo.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import java.sql.Date;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@Getter
@Setter
@RestController
@Log4j
@RequestMapping("/members")
public class MemberController {

    private Map<String, Country> countries;

    private Map<Integer, Chapter> chapters;

    private Map<String, Member> members;

    private MemberRepository memberRepository;

    private CountryRepository countryRepository;

    private ChapterRepository chapterRepository;

    @Autowired
    public MemberController(MemberRepository memberRepository, CountryRepository countryRepository, ChapterRepository chapterRepository) {

        this.memberRepository = memberRepository;
        this.countryRepository = countryRepository;
        this.chapterRepository = chapterRepository;

        loadMembers();
    }

    /**
     * Loads all the countries from the database.
     */
    public void loadMembers() {

        log.debug("Loading members..");
        members = StreamSupport.stream(memberRepository.findAll().spliterator(), false)
                               .collect((Collectors.toMap(Member::getBarcodeId, Function.identity())));
    }

    @GetMapping("/list/{barcodeId}")
    public Member findBarcode(@PathVariable String barcodeId) {

        return memberRepository.findMemberByBarcodeId(barcodeId).orElseThrow(MemberNotFoundException::new);
    }

    @GetMapping("/list")
    public String list() {

        return members.values().stream().map(Member::getLastName).collect(Collectors.joining("<br />"));
    }

    @PostMapping(value = "/add")
    @ResponseStatus(HttpStatus.CREATED)
    public Member add(@RequestBody Member member) {

        member.setLastName("Madrazo");
        member.setFirstName("Josephine");
        member.setMiddleName("Ecal");
        member.setShortName("Joy");
        member.setDateOfBirth(Date.valueOf("1974-12-18"));
        member.setChapter(chapterRepository.findChapterByName("Claremont Chapter").get());

        return memberRepository.save(member);
    }

    @PutMapping("/edit/{id}")
    public Member edit(@PathVariable String id) {

        return null;
    }

}
