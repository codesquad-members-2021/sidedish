package com.team10.banchan.model;

public class DeliveryType {
    private final DeliveryTypeEnum deliveryTypeName;

    DeliveryType(DeliveryTypeEnum deliveryTypeName) {
        this.deliveryTypeName = deliveryTypeName;
    }

    public String getName() {
        return deliveryTypeName.name;
    }

    public String getDetail() {
        return deliveryTypeName.detail;
    }

    public static DeliveryType nationwide() {
        return new DeliveryType(DeliveryTypeEnum.NATIONWIDE);
    }

    public static DeliveryType dawn() {
        return new DeliveryType(DeliveryTypeEnum.DAWN);
    }

    enum DeliveryTypeEnum {
        NATIONWIDE("전국택배", "전국택배 (제주 및 도서산간 불가)"),
        DAWN("새벽배송", "서울 경기 새벽배송");

        private final String name;
        private final String detail;

        DeliveryTypeEnum(String name, String detail) {
            this.name = name;
            this.detail = detail;
        }
    }

}
