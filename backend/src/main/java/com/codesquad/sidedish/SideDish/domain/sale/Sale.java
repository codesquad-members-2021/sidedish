package com.codesquad.sidedish.SideDish.domain.sale;

import org.springframework.data.annotation.Id;

public class Sale {

    @Id
    private Long id;

    private String badge;
    private String saleType;
    private int saleValue;

    public Sale(String badge, String saleType, int saleValue) {
        this.badge = badge;
        this.saleType = saleType;
        this.saleValue = saleValue;
    }

    public Long getId() {
        return id;
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

}
