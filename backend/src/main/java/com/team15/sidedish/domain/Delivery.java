package com.team15.sidedish.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

@Table("delivery")
public class Delivery {

    public static final String MONDAY = "서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 ·화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.";
    public static final String TUESDAY = "서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.";

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


    public String makeDeliveryInfo(boolean isMonday) {
        if (isMonday) {
            return MONDAY;
        }
        return TUESDAY;
    }

}
