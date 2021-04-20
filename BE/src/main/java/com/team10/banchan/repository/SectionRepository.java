package com.team10.banchan.repository;

import com.team10.banchan.model.Section;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface SectionRepository extends CrudRepository<Section, Long> {
    @Override
    List<Section> findAll();
}
