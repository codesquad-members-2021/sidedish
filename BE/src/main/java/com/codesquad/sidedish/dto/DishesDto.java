package com.codesquad.sidedish.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.List;

public class DishesDto {

    @JsonProperty("Dishes")
    private List<CategoryResponseDto> dishes;

    public DishesDto(List<CategoryResponseDto> dishes) {
        this.dishes = dishes;
    }

    public List<CategoryResponseDto> getDishes() {
        return dishes;
    }
}
