package com.codesquad.sidedish.SideDish.dto;

import com.codesquad.sidedish.SideDish.domain.sale.Sale;

public class SaleDto {

    private Long id;
    private String badge;
    private String saleType;
    private int saleValue;

    public SaleDto(Sale sale) {
        this.id = sale.getId();
        this.badge = sale.getBadge();
        this.saleType = sale.getSaleType();
        this.saleValue = sale.getSaleValue();
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
