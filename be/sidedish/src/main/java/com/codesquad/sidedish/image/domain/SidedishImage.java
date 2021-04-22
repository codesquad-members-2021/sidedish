package com.codesquad.sidedish.image.domain;

import org.springframework.data.annotation.Id;

public class SidedishImage {
    @Id
    private Long id;

    private String imageUrl;
    private SidedishImageTypeEnum imageType;

    public SidedishImage(String imageUrl, SidedishImageTypeEnum imageType) {
        this.imageUrl = imageUrl;
        this.imageType = imageType;
    }

    protected SidedishImage() {
    }

    public Long getId() {
        return id;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public SidedishImageTypeEnum getImageType() {
        return imageType;
    }

    @Override
    public String toString() {
        return "SidedishImage{" +
                "id=" + id +
                ", imageUrl='" + imageUrl + '\'' +
                ", imageType=" + imageType +
                '}';
    }
}
