package com.mj_eno.sidedish.domain.Image;

import org.springframework.data.annotation.Id;

public class Image {

    @Id
    Long id;
    String url;
    boolean top;
    int dishId;

    public Long getId() {
        return id;
    }

    public String getUrl() {
        return url;
    }

    public boolean isTop() {
        return top;
    }

    public int getDishId() {
        return dishId;
    }
}
