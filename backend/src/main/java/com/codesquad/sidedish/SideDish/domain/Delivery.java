package com.codesquad.sidedish.SideDish.domain;

import org.springframework.data.annotation.Id;

public class Delivery {

    @Id
    private Long id;

    private String deliveryType;

    public Delivery(String deliveryType) {
        this.deliveryType = deliveryType;
    }

    public Long getId() {
        return id;
    }

    public String getDeliveryType() {
        return deliveryType;
    }

}
