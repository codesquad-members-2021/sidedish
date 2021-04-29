package com.mj_eno.sidedish.domain.menuCategory;

import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface MenuCategoryRepository extends CrudRepository<MenuCategory, Long> {

    Optional<MenuCategory> findByName(String name);
}
