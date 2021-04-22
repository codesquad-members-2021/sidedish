package com.mj_eno.sidedish.domain.detailImage;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface DetailImageRepository extends CrudRepository<DetailImage, Long> {

    List<DetailImage> findAllByDishId(Long dishId);
}
