package com.codesquad.sidedish.category.domain;

import com.codesquad.sidedish.event.domain.SidedishEvent;
import com.codesquad.sidedish.event.domain.SidedishEventDTO;

import java.util.List;
import java.util.Set;

public class SidedishItemDTO {

    private String name;
    private String description;
    private int salePrice;
    private int normalPrice;
    private int Quantity;
    private int PointRate;
    private String DeliveryInfo;
    private String DeliveryFee;

    private Set<SidedishEventDTO> eventBadgeList;

    public SidedishItemDTO(SidedishItem item, Set<SidedishEventDTO> eventBadgeList) {
        this.name = item.getItemName();
        this.description = item.getItemDescription();
        this.salePrice = item.getItemSalePrice();
        this.normalPrice = item.getItemNormalPrice();
        this.Quantity = item.getItemQuantity();
        this.PointRate = item.getPointRate();
        this.DeliveryInfo = item.getItemDeliveryInfo();
        this.DeliveryFee = item.getItemDeliveryFee();
        this.eventBadgeList = eventBadgeList;
    }

    @Override
    public String toString() {
        return "SidedishItemDTO{" +
                "name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", salePrice=" + salePrice +
                ", normalPrice=" + normalPrice +
                ", Quantity=" + Quantity +
                ", PointRate=" + PointRate +
                ", DeliveryInfo='" + DeliveryInfo + '\'' +
                ", DeliveryFee='" + DeliveryFee + '\'' +
                ", eventBadgeList=" + eventBadgeList +
                '}';
    }
}
