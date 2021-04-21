package com.codesquad.sidedish.SideDish.domain;

import java.util.Arrays;
import java.util.List;

public class CategoryMockRepository implements CategoryRepository {
    private final List<Category> categories = Arrays.asList(
            new Category(1, "메인", "/main"),
            new Category(2, "국", "/soup"),
            new Category(3, "반찬", "/side")
    );

    @Override
    public List<Category> findAll() {
        return categories;
    }
}
