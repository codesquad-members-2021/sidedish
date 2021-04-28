package com.codesquad.sidedish.SideDish.domain.sale;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.springframework.data.annotation.Id;

public class DishSale {

    @Id
    private Long id;

    private String dish;

    private Long sale;

    public DishSale(String dish, Long sale) {
        this.dish = dish;
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
