package com.team10.banchan.model;

public class DeliveryType implements Comparable<DeliveryType> {

    private final DeliveryTypeEnum deliveryTypeName;

    DeliveryType(DeliveryTypeEnum deliveryTypeName) {
        this.deliveryTypeName = deliveryTypeName;
    }

    public static DeliveryType nationwide() {
        return new DeliveryType(DeliveryTypeEnum.NATIONWIDE);
    }

    public static DeliveryType dawn() {
        return new DeliveryType(DeliveryTypeEnum.DAWN);
    }

    public String getName() {
        return deliveryTypeName.name;
    }

    public String getDetail() {
        return deliveryTypeName.detail;
    }

    enum DeliveryTypeEnum {
        DAWN("새벽배송", "서울 경기 새벽배송"),
        NATIONWIDE("전국택배", "전국택배 (제주 및 도서산간 불가)");

        private final String name;
        private final String detail;

        DeliveryTypeEnum(String name, String detail) {
            this.name = name;
            this.detail = detail;
        }
    }

    @Override
    public int compareTo(DeliveryType o) {
        return deliveryTypeName.compareTo(o.deliveryTypeName);
    }

}
