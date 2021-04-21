package com.codesquad.sidedish.SideDish.dto;

import java.util.List;

public class CategoryDto {
    private long id;
    private String categoryName;
    private List<DishDto> dishes;

    public CategoryDto(long id, String categoryName, List<DishDto> dishes) {
        this.id = id;
        this.categoryName = categoryName;
        this.dishes = dishes;
    }

    public long getId() {
        return id;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public List<DishDto> getDishes() {
        return dishes;
    }
}
