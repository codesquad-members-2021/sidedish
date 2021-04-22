package com.codesquad.sidedish.image.domain;

import org.springframework.data.annotation.Id;

public class SidedishItemImage {
    @Id
    private Long id;

    private Long sidedishImage;
    private Long sidedishItem;

    private SidedishImageTypeEnum imageType;

    public SidedishItemImage(Long sidedishImage, Long sidedishItem, SidedishImageTypeEnum imageType) {
        this.sidedishImage = sidedishImage;
        this.sidedishItem = sidedishItem;
        this.imageType = imageType;
    }

    public boolean isThumbnailImage() {
        return imageType == SidedishImageTypeEnum.THUMBNAIL;
    }

    public boolean isDetailImage() {
        return imageType == SidedishImageTypeEnum.DETAIL;
    }

    public boolean isDescriptionImage() {
        return imageType == SidedishImageTypeEnum.DESCRIPTION;
    }

    public Long getId() {
        return id;
    }

    public Long getSidedishImage() {
        return sidedishImage;
    }

    public Long getSidedishItem() {
        return sidedishItem;
    }

    public SidedishImageTypeEnum getImageType() {
        return imageType;
    }

    @Override
    public String toString() {
        return "SidedishItemImage{" +
                "id=" + id +
                ", sidedishImage=" + sidedishImage +
                ", sidedishItem=" + sidedishItem +
                ", imageType=" + imageType +
                '}';
    }
}
