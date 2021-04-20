package com.example.util;

public enum DeliveryType {

    새벽배송(""), 전국택배("제주 및 도서산간 불가");

    private final String description;

    DeliveryType(String description) {
        this.description = description;
    }

    public String getDescription() {
        if(!"".equals(description)) {
            return "("+description+")";
        }
        return description;
    }

}
