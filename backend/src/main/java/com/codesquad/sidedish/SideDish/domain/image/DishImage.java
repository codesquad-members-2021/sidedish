package com.codesquad.sidedish.SideDish.domain.image;

import org.springframework.data.annotation.Id;

public class DishImage {
    @Id
    private Long id;

    private String dish;
    private Long image;

    public DishImage(String dish, Long image) {
        this.dish = dish;
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
