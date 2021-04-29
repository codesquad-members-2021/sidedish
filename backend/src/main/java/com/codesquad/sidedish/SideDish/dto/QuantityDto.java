package com.codesquad.sidedish.SideDish.dto;


import com.codesquad.sidedish.SideDish.domain.Dish;

public class QuantityDto {
    private final int quantity;

    private QuantityDto(int quantity) {
        this.quantity = quantity;
    }

    public int getQuantity() {
        return quantity;
    }

    public static QuantityDto from(Dish dish) {
        return new QuantityDto(dish.getQuantity());
    }
}
