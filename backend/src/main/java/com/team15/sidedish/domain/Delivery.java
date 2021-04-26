package com.team15.sidedish.domain;

import org.springframework.data.annotation.Id;

public class Delivery {
    @Id
    private Long id;

    private boolean isMonday;
    private String deliveryType;
    private Integer deliveryFee;
    private Integer deliveryCondition;

    private String dishHash;

    public Delivery(Long id, boolean isMonday, String deliveryType, Integer deliveryFee, Integer deliveryCondition, String dishHash) {
        this.id = id;
        this.isMonday = isMonday;
        this.deliveryType = deliveryType;
        this.deliveryFee = deliveryFee;
        this.deliveryCondition = deliveryCondition;
        this.dishHash = dishHash;
    }

    public Long getId() {
        return id;
    }

    public boolean isMonday() {
        return isMonday;
    }

    public String getDeliveryType() {
        return deliveryType;
    }

    public Integer getDeliveryFee() {
        return deliveryFee;
    }

    public Integer getDeliveryCondition() {
        return deliveryCondition;
    }

    public String getDishHash() {
        return dishHash;
    }

}
