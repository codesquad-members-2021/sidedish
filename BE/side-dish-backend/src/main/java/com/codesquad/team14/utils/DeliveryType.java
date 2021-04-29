package com.codesquad.team14.utils;

public enum DeliveryType {
    NEXT_DAY("서울 경기 새벽배송"),
    NATIONAL_WIDE("전국택배 (제주 및 도서산간 불가) [월, 화, 수, 목, 금, 토] 수령 가능한 상품입니다.");

    final private String detail;

    DeliveryType(String detail) {
        this.detail = detail;
    }

    public String getDetail() {
        return detail;
    }
}
