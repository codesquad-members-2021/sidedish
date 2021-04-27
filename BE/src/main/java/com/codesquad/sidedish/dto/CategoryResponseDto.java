package com.codesquad.sidedish.dto;

import com.codesquad.sidedish.domain.Category;
import com.codesquad.sidedish.domain.Dish;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@JsonPropertyOrder({"type", "name", "dishes"})
public class CategoryResponseDto {

    @JsonProperty("category")
    private String type;
    private String name;
    private List<DishResponseDto> dishes;

    private CategoryResponseDto(String name, String type, List<DishResponseDto> dishes) {
        this.name = name;
        this.type = type;
        this.dishes = dishes;
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }

    public List<DishResponseDto> getDishes() {
        return dishes;
    }

    public static CategoryResponseDto of(Category category) {
        return new CategoryResponseDto(category.getName(), category.getType(), dishesMapToDishResponseDtoList(category.getDishes()));
    }

    private static List<DishResponseDto> dishesMapToDishResponseDtoList(Map<String, Dish> dishes) {
        List<DishResponseDto> dishResponseDto = new ArrayList<>();
        for (String key : dishes.keySet()) {
            dishResponseDto.add(DishResponseDto.of(dishes.get(key)));
        }
        return dishResponseDto;
    }

    @Override
    public String toString() {
        return "CategoryResponseDto{" +
                ", type='" + type + '\'' +
                ", name='" + name + '\'' +
                ", dishes=" + dishes +
                '}';
    }
}
