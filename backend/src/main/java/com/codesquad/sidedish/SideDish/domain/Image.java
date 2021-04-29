package com.codesquad.sidedish.SideDish.domain;

import org.springframework.data.annotation.Id;

import java.util.HashSet;
import java.util.Set;

public class Image {

    @Id
    private Long id;

    private String imageUrl;

    private String type;

    private Set<DishImage> dishImages = new HashSet<>();

    protected Image() {
    }

    public Image(String imageUrl, String type) {
        this.imageUrl = imageUrl;
        this.type = type;
    }


    public Long getId() {
        return id;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public String getType() {
        return type;
    }

    public Set<DishImage> getDishImages() {
        return dishImages;
    }

}
