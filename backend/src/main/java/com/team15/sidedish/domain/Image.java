package com.team15.sidedish.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

@Table("image")
public class Image {
    @Id
    private Long id;
    private String imageUrl;
    private String dishHash;
    private boolean isThumb;

    public Image(Long id, String imageUrl, String dishHash, boolean isThumb) {
        this.id = id;
        this.imageUrl = imageUrl;
        this.dishHash = dishHash;
        this.isThumb = isThumb;
    }

    public Long getId() {
        return id;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public String getDishHash() {
        return dishHash;
    }

    public boolean isThumb() {
        return isThumb;
    }
}
