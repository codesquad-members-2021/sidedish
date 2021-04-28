package com.codesquad.sidedish.SideDish.dto;

import com.codesquad.sidedish.SideDish.domain.image.Image;

public class ImageDto {

    private Long id;
    private String imageUrl;
    private String type;

    public ImageDto(Image image) {
        this.id = image.getId();
        this.imageUrl = image.getImageUrl();
        this.type = image.getType();
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
}
