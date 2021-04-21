package com.codesquad.sidedish.SideDish.dto;

public class CategoryDto {
    private long id;
    private String categoryName;
    private String endPoint;

    public CategoryDto(long id, String categoryName, String endPoint) {
        this.id = id;
        this.categoryName = categoryName;
        this.endPoint = endPoint;
    }

    public long getId() {
        return id;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public String getEndPoint() {
        return endPoint;
    }
}
