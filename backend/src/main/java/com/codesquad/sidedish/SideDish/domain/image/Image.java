package com.codesquad.sidedish.SideDish.domain.image;

import org.springframework.data.annotation.Id;

public class Image {

    @Id
    private Long id;

    private String imageUrl;

    private String type;

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

}
