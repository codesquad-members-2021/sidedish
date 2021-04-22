package com.team15.sidedish.dto;

import com.team15.sidedish.domain.Dish;

import java.util.Set;

public class BestResponseDTO {

    private Integer categoryId;
    private String name;
    private Set<ItemDTO> dishes;

    public BestResponseDTO(Integer categoryId, String name, Set<ItemDTO> dishes) {
        this.categoryId = categoryId;
        this.name = name;
        this.dishes = dishes;
    }


    public Integer getCategoryId() {
        return categoryId;
    }

    public String getName() {
        return name;
    }

    public Set<ItemDTO> getDishes() {
        return dishes;
    }



}
