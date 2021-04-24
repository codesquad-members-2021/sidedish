package com.team15.sidedish.domain;

import org.springframework.data.annotation.Id;

public class Delivery {
    @Id
    private Long id;

    private boolean isMonday;
    private String deliveryType;
    private String deliveryFee;
    private String deliveryCondition;

    private String dishHash;

    public Delivery(){ }

    public Delivery(Long id, boolean isMonday, String deliveryType, String deliveryFee, String deliveryCondition, String dishHash) {
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

    public String getDeliveryFee() {
        return deliveryFee;
    }

    public String getDeliveryCondition() {
        return deliveryCondition;
    }

    public String getDishHash() {
        return dishHash;
    }

    //    private List<DeliveryType> parsingDeliveryType(String delivery) {
//        return Arrays.stream(delivery.split(“,”))
//                .map(DeliveryType::valueOf)
//                .collect(Collectors.toList());
//    }

}
