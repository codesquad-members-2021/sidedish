package com.codesquad.sidedish.SideDish.domain;

public class Category {
    private final long id;
    private final String categoryName;
    private final String endPoint;

    public Category(long id, String categoryName, String endPoint) {
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
