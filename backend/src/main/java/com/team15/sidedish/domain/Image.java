package com.team15.sidedish.domain;

import org.springframework.data.annotation.Id;

public class Image {
    @Id
    private Long id;

    private String imageUrl;
    private String dishHash;

    public Image(Long id, String imageUrl, String dishHash) {
        this.id = id;
        this.imageUrl = imageUrl;
        this.dishHash = dishHash;
    }

}
