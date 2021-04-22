package com.mj_eno.sidedish.domain.detailImage;

import org.springframework.data.annotation.Id;

public class DetailImage {

    @Id
    Long id;
    String url;
    int dishId;

    public Long getId() {
        return id;
    }

    public String getUrl() {
        return url;
    }

    public int getDishId() {
        return dishId;
    }
}
