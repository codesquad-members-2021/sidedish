package com.example.util;

public enum Badge{

    정상가(1), 론칭특가(0.1), 이벤트특가(0.2);

    private final double discountRate;

    Badge(double discountRate) {
        this.discountRate = discountRate;
    }

    public double getDiscountRate() {
        return discountRate;
    }

}
