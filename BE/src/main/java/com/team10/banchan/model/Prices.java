package com.team10.banchan.model;

import org.springframework.data.annotation.Transient;

import java.math.BigDecimal;
import java.text.DecimalFormat;

public class Prices {

    @Transient
    private static final DecimalFormat DECIMAL_FORMAT = new DecimalFormat("#,###원");

    private final BigDecimal nPrice;
    private final BigDecimal sPrice;
    private final BigDecimal deliveryFee;

    Prices(BigDecimal nPrice, BigDecimal sPrice, BigDecimal deliveryFee) {
        this.nPrice = nPrice;
        this.sPrice = sPrice;
        this.deliveryFee = deliveryFee;
    }

    public static Prices of(BigDecimal nPrice, BigDecimal sPrice, BigDecimal deliveryFee) {
        return new Prices(nPrice, sPrice, deliveryFee);
    }

    public String getnPrice() {
        return DECIMAL_FORMAT.format(nPrice);
    }

    public String getsPrice() {
        return DECIMAL_FORMAT.format(sPrice);
    }

    public String getDeliveryFee() {
        return DECIMAL_FORMAT.format(deliveryFee);
    }

    public String getPoints() {
        return DECIMAL_FORMAT.format(sPrice.movePointLeft(2));
    }
}
