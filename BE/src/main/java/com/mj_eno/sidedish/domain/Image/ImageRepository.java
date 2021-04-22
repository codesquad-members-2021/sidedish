package com.mj_eno.sidedish.domain.Image;

import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface ImageRepository extends CrudRepository<Image, Long> {

    Optional<Image> findByDishIdAndTopTrue(Long dishId);

    List<Image> findAllByDishId(Long dishId);
}
