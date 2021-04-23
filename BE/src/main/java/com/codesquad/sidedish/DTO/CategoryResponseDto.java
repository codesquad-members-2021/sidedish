package com.codesquad.sidedish.DTO;

import com.codesquad.sidedish.entity.Category;
import com.codesquad.sidedish.entity.Dish;

import java.util.HashSet;
import java.util.Set;

public class CategoryResponseDto {
    private final Long id;
    private final String name;
    private final String type;
    private final Set<DishResponseDto> dishes;

    private CategoryResponseDto(Long id, String name, String type, Set<DishResponseDto> dishes) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.dishes = dishes;
    }

    public static CategoryResponseDto of(Category category) {
        return new CategoryResponseDto(category.getId(), category.getName(), category.getType(), dishSetToDishResponseDto(category.getDishes()));
    }

    private static Set<DishResponseDto> dishSetToDishResponseDto(Set<Dish> dishes) {
        Set<DishResponseDto> dishResponseDtoSet = new HashSet<>();
        for (Dish dish : dishes) {
            dishResponseDtoSet.add(DishResponseDto.of(dish));
        }
        return dishResponseDtoSet;
    }
}
