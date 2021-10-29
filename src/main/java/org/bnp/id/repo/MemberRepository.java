package org.bnp.id.repo;

import org.bnp.id.model.Member;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface MemberRepository extends CrudRepository<Member, Long> {

    Optional<Member> findMemberByBarcodeId(String barcodeId);
}
