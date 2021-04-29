package com.team15.sidedish.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.team15.sidedish.domain.Best;

import java.util.List;

public class BestDTO {
    @JsonProperty("category_id")
    private Long categoryId;
    private String name;
    private List<DishDAO> dishes;

    private BestDTO(Long categoryId, String name, List<DishDAO> dishes) {
        this.categoryId = categoryId;
        this.name = name;
        this.dishes = dishes;
    }

    public static BestDTO of(Best best, List<DishDAO> items){
        return new BestDTO(best.getCategoryId(), best.getName(), items);
    }

    public Long getCategoryId() {
        return categoryId;
    }

    public String getName() {
        return name;
    }

    public List<DishDAO> getDishes() {
        return dishes;
    }

    @Override
    public String toString() {
        return "BestDTO{" +
                "categoryId=" + categoryId +
                ", name='" + name + '\'' +
                ", dishes=" + dishes +
                '}';
    }
}
