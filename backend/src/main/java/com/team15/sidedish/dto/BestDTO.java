package com.team15.sidedish.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.team15.sidedish.domain.Best;

import java.util.List;

public class BestDTO {
    @JsonProperty("category_id")
    private Integer categoryId;
    private String name;
    private List<ItemDTO> items;

    private BestDTO(Integer categoryId, String name, List<ItemDTO> items) {
        this.categoryId = categoryId;
        this.name = name;
        this.items = items;
    }

    public static BestDTO of(Best best, List<ItemDTO> items){
        return new BestDTO(best.getCategoryId(), best.getName(), items);
    }

    public Integer getCategoryId() {
        return categoryId;
    }

    public String getName() {
        return name;
    }

    public List<ItemDTO> getItems() {
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
