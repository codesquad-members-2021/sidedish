package com.codesquad.sidedish.SideDish.domain;

public class Image {
    private String imageUrl;

    private String type;

    public Image(String imageUrl, String type) {
        this.imageUrl = imageUrl;
        this.type = type;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public String getType() {
        return type;
    }

}
