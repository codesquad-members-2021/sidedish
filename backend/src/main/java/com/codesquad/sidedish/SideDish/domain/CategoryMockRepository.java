package com.codesquad.sidedish.SideDish.domain;

import java.util.Arrays;
import java.util.List;

public class CategoryMockRepository implements CategoryRepository {
    private final List<Category> categories = Arrays.asList(
            new Category(1, "모두가 좋아하는 든든한 메인요리", "/main"),
            new Category(2, "뜨끈하고 시원한 국물요리", "/soup"),
            new Category(3, "밥도둑이 여기있다! 반찬요리", "/side")
    );

    @Override
    public List<Category> findAll() {
        return categories;
    }
}
