package com.codesquad.sidedish.web.sidedish;

import java.text.NumberFormat;
import java.text.ParseException;

public class Price {
    private static final String POSTFIX = "원";

    private long price;

    public Price(String price) {
        this.price = parsePrice(price);
    }

    public String getFormattedPrice() {
        return NumberFormat.getInstance().format(price) + POSTFIX;
    }

    private long parsePrice(String price) {
        try {
            return NumberFormat.getInstance().parse(price).longValue();
        } catch (ParseException e) {
            throw new IllegalArgumentException("Error occurred while parsing price, price : " + price, e);
        }
    }

    @Override
    public String toString() {
        return "Price{" +
                "price=" + price +
                '}';
    }
}
