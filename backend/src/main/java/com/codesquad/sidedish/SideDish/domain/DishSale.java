package com.codesquad.sidedish.SideDish.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;

public class DishSale {

    @Id
    private Long id;

    private String dish;

    private Long sale;

    @PersistenceConstructor
    public DishSale(Long sale) {
        this.sale = sale;
    }

    public Long getId() {
        return id;
    }

    public String getDish() {
        return dish;
    }

    public Long getSale() {
        return sale;
    }

}
