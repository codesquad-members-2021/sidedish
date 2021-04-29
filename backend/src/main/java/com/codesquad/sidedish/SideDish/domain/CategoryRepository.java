package com.codesquad.sidedish.SideDish.domain;

import java.util.List;

public interface CategoryRepository {
    List<Category> findAll();
}
