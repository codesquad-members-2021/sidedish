package com.team15.sidedish.dto;

import java.util.List;

public class SectionDishesDTO {

    private String section;
    private List<DishDAO> dishes;

    private SectionDishesDTO(String section, List<DishDAO> dishes) {
        this.section = section;
        this.dishes = dishes;
    }

    public static SectionDishesDTO of(String section, List<DishDAO> dishes) {
        return new SectionDishesDTO(section, dishes);
    }

    public String getSection() {
        return section;
    }

    public List<DishDAO> getDishes() {
        return dishes;
    }

}
