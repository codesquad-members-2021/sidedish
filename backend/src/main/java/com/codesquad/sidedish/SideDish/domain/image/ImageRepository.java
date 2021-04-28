package com.codesquad.sidedish.SideDish.domain.image;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ImageRepository  extends CrudRepository<Image, Long> {
    List<Image> findImagesByType(String type);
}
