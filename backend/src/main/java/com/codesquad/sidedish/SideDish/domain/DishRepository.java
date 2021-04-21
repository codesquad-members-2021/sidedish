package com.codesquad.sidedish.SideDish.domain;

import java.util.List;

public interface DishRepository {
    List<Dish> findAllByCategoryId(long categoryId);

    Dish findByDetailHash(String detailHash);
}
