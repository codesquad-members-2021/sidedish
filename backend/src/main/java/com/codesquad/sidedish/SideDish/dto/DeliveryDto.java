package com.codesquad.sidedish.SideDish.dto;

import com.codesquad.sidedish.SideDish.domain.delivery.Delivery;

public class DeliveryDto {

    private Long id;
    private String deliveryType;

    public DeliveryDto(Delivery delivery) {
        this.id = delivery.getId();
        this.deliveryType = delivery.getDeliveryType();
    }

    public Long getId() {
        return id;
    }

    public String getDeliveryType() {
        return deliveryType;
    }


}
