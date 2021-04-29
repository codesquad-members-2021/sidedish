package com.codesquad.sidedish.SideDish.dto;

import com.codesquad.sidedish.SideDish.domain.Category;

public class CategoryDto {
    private final Long id;
    private final String categoryName;
    private final String endPoint;

    private CategoryDto(Long id, String categoryName, String endPoint) {
        this.id = id;
        this.categoryName = categoryName;
        this.endPoint = endPoint;
    }

    public static CategoryDto from(Category category) {
        return new CategoryDto(
                category.getId(),
                category.getCategoryName(),
                category.getEndPoint()
        );
    }

    public Long getId() {
        return id;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public String getEndPoint() {
        return endPoint;
    }
}
