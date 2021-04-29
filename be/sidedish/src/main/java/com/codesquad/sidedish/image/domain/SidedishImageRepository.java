package com.codesquad.sidedish.image.domain;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface SidedishImageRepository extends CrudRepository<SidedishImage, Long> {
    List<SidedishImage> findAllById(Iterable<Long> imageIds);
}
