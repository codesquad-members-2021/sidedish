package com.codesquad.sidedish.category.domain;

import org.springframework.data.annotation.Id;

import java.util.ArrayList;
import java.util.List;

public class SidedishCategory {
    @Id
    private Long id;

    private String categoryName;
    private List<SidedishItem> sidedishItemList = new ArrayList<>();

    public SidedishCategory(String categoryName) {
        this.categoryName = categoryName;
    }

    protected SidedishCategory() {
    }

    public void addSidedishItem(SidedishItem sidedishItem) {
        sidedishItemList.add(sidedishItem);
    }

    public Long getId() {
        return id;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public List<SidedishItem> getSidedishItemList() {
        return sidedishItemList;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", categoryName='" + categoryName + '\'' +
                '}';
    }
}
