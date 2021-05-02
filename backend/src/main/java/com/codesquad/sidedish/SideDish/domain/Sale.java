package com.codesquad.sidedish.SideDish.domain;

import java.util.Objects;

public class Sale {
    private String badge;
    private String saleType;
    private int saleValue;


    public Sale(String badge, String saleType, int saleValue) {
        this.badge = badge;
        this.saleType = saleType;
        this.saleValue = saleValue;
    }

    public String getBadge() {
        return badge;
    }

    public String getSaleType() {
        return saleType;
    }

    public int getSaleValue() {
        return saleValue;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Sale sale = (Sale) o;
        return saleValue == sale.saleValue && Objects.equals(badge, sale.badge) && Objects.equals(saleType, sale.saleType);
    }

    @Override
    public int hashCode() {
        return Objects.hash(badge, saleType, saleValue);
    }
}
