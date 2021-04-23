package com.codesquad.sidedish.category.domain.dto;

import com.codesquad.sidedish.category.domain.SidedishItem;
import com.codesquad.sidedish.event.domain.dto.SidedishEventDTO;
import com.codesquad.sidedish.image.domain.SidedishImage;

import java.util.Set;

public class SidedishItemPreviewDTO {

    private Long id;
    private String thumbnailImage;
    private String name;
    private String description;
    private int normalPrice;
    private int salePrice;
    private Set<SidedishEventDTO> eventBadgeList;

    public SidedishItemPreviewDTO(SidedishItem item, int salePrice, Set<SidedishEventDTO> eventBadgeList, SidedishImage thumbnailImageUrl) {
        this.id = item.getId();
        this.thumbnailImage = thumbnailImageUrl.getImageUrl();
        this.name = item.getItemName();
        this.description = item.getItemDescription();
        this.normalPrice = item.getItemNormalPrice();
        this.salePrice = salePrice;
        this.eventBadgeList = eventBadgeList;
    }

    @Override
    public String toString() {
        return "SidedishItemPreviewDTO{" +
                "id=" + id +
                ", thumbnailImage='" + thumbnailImage + '\'' +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", normalPrice=" + normalPrice +
                ", salePrice=" + salePrice +
                ", eventBadgeList=" + eventBadgeList +
                '}';
    }

    public Long getId() {
        return id;
    }

    public String getThumbnailImage() {
        return thumbnailImage;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public int getNormalPrice() {
        return normalPrice;
    }

    public int getSalePrice() {
        return salePrice;
    }

    public Set<SidedishEventDTO> getEventBadgeList() {
        return eventBadgeList;
    }
}
