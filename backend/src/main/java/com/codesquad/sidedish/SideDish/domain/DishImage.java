package com.codesquad.sidedish.SideDish.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;

public class DishImage {
    @Id
    private Long id;

    private String dish;

    private Long image;

    @PersistenceConstructor
    public DishImage(Long image) {
        this.image = image;
    }

    public Long getId() {
        return id;
    }

    public String getDish() {
        return dish;
    }

    public Long getImage() {
        return image;
    }


}
