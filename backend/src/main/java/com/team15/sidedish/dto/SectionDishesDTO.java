package com.team15.sidedish.dto;

import java.util.List;

public class SectionDishesDTO {

    private String section;
    private List<DishDTO> dishes;

    private SectionDishesDTO(String section, List<DishDTO> dishes) {
        this.section = section;
        this.dishes = dishes;
    }

    public static SectionDishesDTO of(String section, List<DishDTO> dishes) {
        return new SectionDishesDTO(section, dishes);
    }

    public String getSection() {
        return section;
    }

    public List<DishDTO> getDishes() {
        return dishes;
    }

}
