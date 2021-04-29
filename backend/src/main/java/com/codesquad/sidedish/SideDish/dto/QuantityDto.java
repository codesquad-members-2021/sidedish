package com.codesquad.sidedish.SideDish.dto;


import com.codesquad.sidedish.SideDish.domain.Dish;

public class QuantityDto {
    private final Integer quantity;

    private QuantityDto(Integer quantity) {
        this.quantity = quantity;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public static QuantityDto from(Dish dish) {
        return new QuantityDto(dish.getQuantity());
    }
}
