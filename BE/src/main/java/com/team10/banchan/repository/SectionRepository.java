package com.team10.banchan.repository;

import com.team10.banchan.model.Section;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface SectionRepository extends CrudRepository<Section, Long> {
    @Override
    List<Section> findAll();

    Optional<Section> findByName(String sectionName);
}
