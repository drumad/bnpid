package org.bnp.id.repo;

import org.bnp.id.model.Chapter;
import org.springframework.data.repository.CrudRepository;

import java.util.Collection;
import java.util.Optional;

public interface ChapterRepository extends CrudRepository<Chapter, Integer> {

    Optional<Chapter> findById(Integer id);

    Optional<Chapter> findChapterByName(String name);

    Collection<Chapter> findChaptersByNameContaining(String name);

    Collection<Chapter> findChapterByLocationContains(String country);
}
