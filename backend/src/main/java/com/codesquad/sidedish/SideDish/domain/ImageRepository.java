package com.codesquad.sidedish.SideDish.domain;

import org.springframework.data.repository.CrudRepository;

public interface ImageRepository extends CrudRepository<Image, String> {
//    List<Image> findAllByDishDetailHash(String dishDetailHash);
}
