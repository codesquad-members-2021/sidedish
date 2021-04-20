package com.team10.banchan.model;

enum DeliveryType {
    NATIONWIDE("전국택배", "전국택배 (제주 및 도서산간 불가)"),
    DAWN("새벽배송", "서울 경기 새벽배송");

    private final String name;
    private final String detail;

    DeliveryType(String name, String detail) {
        this.name = name;
        this.detail = detail;
    }

    public String getName() {
        return name;
    }

    public String getDetail() {
        return detail;
    }
}
