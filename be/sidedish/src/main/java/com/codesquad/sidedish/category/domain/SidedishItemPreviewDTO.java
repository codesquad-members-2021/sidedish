package com.codesquad.sidedish.category.domain;

import com.codesquad.sidedish.event.domain.SidedishEvent;
import com.codesquad.sidedish.event.domain.SidedishEventDTO;
import com.codesquad.sidedish.image.domain.SidedishImage;

import java.util.List;
import java.util.Set;

public class SidedishItemPreviewDTO {

    private String name;
    private String description;
    private int salePrice;
    private int normalPrice;
    private int Quantity;
    private int PointRate;
    private String DeliveryInfo;
    private String DeliveryFee;

    private Set<SidedishEventDTO> eventBadgeList;
    private String thumbnailImage;

    public SidedishItemPreviewDTO(SidedishItem item, Set<SidedishEventDTO> eventBadgeList, SidedishImage thumbnailImageUrl) {
        this.name = item.getItemName();
        this.description = item.getItemDescription();
        this.salePrice = item.getItemSalePrice();
        this.normalPrice = item.getItemNormalPrice();
        this.Quantity = item.getItemQuantity();
        this.PointRate = item.getPointRate();
        this.DeliveryInfo = item.getItemDeliveryInfo();
        this.DeliveryFee = item.getItemDeliveryFee();
        this.eventBadgeList = eventBadgeList;
        this.thumbnailImage = thumbnailImageUrl.getImageUrl();
    }

    @Override
    public String toString() {
        return "SidedishItemDTO{" +
                "name='" + name + '\'' +
                ", description='" + description + '\n' +
                ", salePrice=" + salePrice +
                ", normalPrice=" + normalPrice +
                ", Quantity=" + Quantity +
                ", PointRate=" + PointRate +
                ", DeliveryInfo='" + DeliveryInfo + '\n' +
                ", DeliveryFee='" + DeliveryFee + '\n' +
                ", eventBadgeList=" + eventBadgeList + '\n' +
                ", thumbnailImage=" + thumbnailImage + '\n' +
                '}';
    }
}
