package com.codesquad.sidedish.image.domain;

import com.codesquad.sidedish.category.domain.SidedishCategory;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface SidedishImageRepository extends CrudRepository<SidedishImage, Long> {
    List<SidedishImage> findAllById(Iterable<Long> imageIds);
}
