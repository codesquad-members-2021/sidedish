package com.team15.sidedish.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.team15.sidedish.domain.Best;

import java.util.List;

public class BestDTO {
    @JsonProperty("category_id")
    private Long categoryId;
    private String name;
    private List<DishDTO> items;

    private BestDTO(Long categoryId, String name, List<DishDTO> items) {
        this.categoryId = categoryId;
        this.name = name;
        this.items = items;
    }

    public static BestDTO of(Best best, List<DishDTO> items){
        return new BestDTO(best.getCategoryId(), best.getName(), items);
    }

    public Long getCategoryId() {
        return categoryId;
    }

    public String getName() {
        return name;
    }

    public List<DishDTO> getItems() {
        return items;
    }

    @Override
    public String toString() {
        return "BestDTO{" +
                "categoryId=" + categoryId +
                ", name='" + name + '\'' +
                ", items=" + items +
                '}';
    }
}
