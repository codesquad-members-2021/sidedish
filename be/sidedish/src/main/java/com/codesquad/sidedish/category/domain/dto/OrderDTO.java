package com.codesquad.sidedish.category.domain.dto;

public class OrderDTO {
    private int quantity;

    protected OrderDTO() {
    }

    public OrderDTO(int quantity) {
        this.quantity = quantity;
    }

    public int getQuantity() {
        return quantity;
    }
}
