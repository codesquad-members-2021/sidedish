package com.team10.banchan.model;

import java.math.BigDecimal;

public class Prices {
    private final BigDecimal nPrice;
    private final BigDecimal sPrice;
    private final BigDecimal deliveryFee;

    Prices(BigDecimal nPrice, BigDecimal sPrice, BigDecimal deliveryFee) {
        this.nPrice = nPrice;
        this.sPrice = sPrice;
        this.deliveryFee = deliveryFee;
    }

    public static Prices of(BigDecimal nPrice, BigDecimal sPrice, BigDecimal deliveryFee) {
        return new Prices(nPrice,sPrice, deliveryFee);
    }

    public BigDecimal getnPrice() {
        return nPrice;
    }

    public BigDecimal getsPrice() {
        return sPrice;
    }

    public BigDecimal getDeliveryFee() {
        return deliveryFee;
    }
}
