package com.codesquad.sidedish.image.domain;

import org.springframework.data.annotation.Id;

public class SidedishItemImage {
    @Id
    private Long id;

    private Long sidedishImage;
    private Long sidedishItem;

    public SidedishItemImage(Long sidedishImage, Long sidedishItem) {
        this.sidedishImage = sidedishImage;
        this.sidedishItem = sidedishItem;
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

    @Override
    public String toString() {
        return "SidedishItemImage{" +
                "id=" + id +
                ", sidedishImageId=" + sidedishImage +
                ", sidedishItemId=" + sidedishItem +
                '}';
    }
}
