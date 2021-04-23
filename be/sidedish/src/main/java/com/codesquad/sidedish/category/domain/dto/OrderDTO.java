package com.codesquad.sidedish.category.domain.dto;

public class OrderDTO {
    private int quantity;

    public OrderDTO(int quantity) {
        this.quantity = quantity;
    }

    protected OrderDTO() {
    }

    public int getQuantity() {
        return quantity;
    }
}
