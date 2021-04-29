package com.mj_eno.sidedish.domain.bestMenuCategory;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface BestMenuCategoryRepository extends CrudRepository<BestMenuCategory, Long> {

    List<BestMenuCategory> findAll();
}
