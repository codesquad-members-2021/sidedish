package com.mj_eno.sidedish.domain.dish;

public class Delivery {

    private String deliveryType;
    private String deliveryInfo;
    private String deliveryFee;

    public Delivery(String deliveryType, String deliveryInfo, String deliveryFee) {
        this.deliveryType = deliveryType;
        this.deliveryInfo = deliveryInfo;
        this.deliveryFee = deliveryFee;
    }

    public String getDeliveryType() {
        return deliveryType;
    }

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public String getDeliveryFee() {
        return deliveryFee;
    }
}
