package org.bnp.id.controller;

import lombok.Getter;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;
import org.bnp.id.exception.MemberNotFoundException;
import org.bnp.id.model.Member;
import org.bnp.id.repo.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@Getter
@Setter
@RestController
@Log4j2
@RequestMapping("/members")
public class MemberController {

    private MemberRepository memberRepository;

    @Autowired
    public MemberController(MemberRepository memberRepository) {

        this.memberRepository = memberRepository;
    }

    @GetMapping("/list/{barcodeId}")
    public Member findBarcode(@PathVariable String barcodeId) {

        log.debug("Finding member with barcode: " + barcodeId);
        return memberRepository.findMemberByBarcodeId(barcodeId).orElseThrow(MemberNotFoundException::new);
    }

    @GetMapping("/list")
    public Iterable<Member> list() {

        log.debug("Get request, returning full list of members.");
        return memberRepository.findAll();
    }

    @PostMapping(value = "/add")
    @ResponseStatus(HttpStatus.CREATED)
    public Member add(@RequestBody Member member) {

        log.debug(member);
        return memberRepository.save(member);
    }

    @PutMapping("/edit/{id}")
    @ResponseStatus(HttpStatus.OK)
    public Member edit(@PathVariable String id, @RequestBody Member updatedMember) {

        Long longId = Long.valueOf(id);
        Member member = memberRepository.findById(longId).orElseThrow(() -> new MemberNotFoundException(longId));

        log.debug("Original = " + member);

        member.setAddress(updatedMember.getAddress());
        member.setBarcodeId(updatedMember.getBarcodeId());
        member.setCellular(updatedMember.getCellular());
        member.setChapter(updatedMember.getChapter());
        member.setCity(updatedMember.getCity());
        member.setClasses(updatedMember.getClasses());
        member.setContact(updatedMember.getContact());
        member.setCountry(updatedMember.getCountry());
        member.setDateAdorer(updatedMember.getDateAdorer());
        member.setDateCouncil(updatedMember.getDateCouncil());
        member.setDateHirang(updatedMember.getDateHirang());
        member.setDateOfBirth(updatedMember.getDateOfBirth());
        member.setDegree(updatedMember.getDegree());
        member.setDietaryRequirements(updatedMember.getDietaryRequirements());
        member.setDietaryRequirementsDesc(updatedMember.getDietaryRequirementsDesc());
        member.setEducation(updatedMember.getEducation());
        member.setEmail(updatedMember.getEmail());
        member.setFirstName(updatedMember.getFirstName());
        member.setHomePhone(updatedMember.getHomePhone());
        member.setIllness(updatedMember.getIllness());
        member.setActive(updatedMember.isActive());
        member.setLastName(updatedMember.getLastName());
        member.setMaritalStatus(updatedMember.getMaritalStatus());
        member.setMemberStatus(updatedMember.getMemberStatus());
        member.setMiddleName(updatedMember.getMiddleName());
        member.setNotes(updatedMember.getNotes());
        member.setParish(updatedMember.getParish());
        member.setPhysicalLimitations(updatedMember.getPhysicalLimitations());
        member.setReligion(updatedMember.getReligion());
        member.setSex(updatedMember.getSex());
        member.setShortName(updatedMember.getShortName());
        member.setSponsor(updatedMember.getSponsor());
        member.setState(updatedMember.getState());
        member.setSuffix(updatedMember.getSuffix());
        member.setWorkPhone(updatedMember.getWorkPhone());
        member.setZip(updatedMember.getZip());

        log.debug("Updated = " + member);

        return memberRepository.save(member);
    }


    @DeleteMapping("/delete/{id}")
    @ResponseStatus(HttpStatus.OK)
    public Member delete(@PathVariable String id) {

        Long longId = Long.valueOf(id);
        Member member = memberRepository.findById(longId).orElseThrow(() -> new MemberNotFoundException(longId));
        memberRepository.delete(member);

        log.debug("Deleted = " + member);

        return member;
    }
}
