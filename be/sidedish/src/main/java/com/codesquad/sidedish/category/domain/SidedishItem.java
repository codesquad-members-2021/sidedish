package com.codesquad.sidedish.category.domain;

import com.codesquad.sidedish.event.domain.SidedishEvent;
import com.codesquad.sidedish.event.domain.SidedishEventItem;
import com.codesquad.sidedish.image.domain.SidedishImage;
import com.codesquad.sidedish.image.domain.SidedishItemImage;
import org.springframework.data.annotation.Id;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class SidedishItem {
    @Id
    private Long id;

    private String itemName;
    private String itemDescription;
    private int itemSalePrice;
    private int itemNormalPrice;
    private int itemQuantity;
    private int itemPointRate;
    private String itemDeliveryInfo;
    private String itemDeliveryFee;

    private Set<SidedishEventItem> eventItems = new HashSet<>();

    private List<SidedishItemImage> sidedishItemImages = new ArrayList<>();

    public SidedishItem(String itemName, String itemDescription, int itemSalePrice, int itemNormalPrice, int itemQuantity, int itemPointRate, String itemDeliveryInfo, String itemDeliveryFee) {
        this.itemName = itemName;
        this.itemDescription = itemDescription;
        this.itemSalePrice = itemSalePrice;
        this.itemNormalPrice = itemNormalPrice;
        this.itemQuantity = itemQuantity;
        this.itemPointRate = itemPointRate;
        this.itemDeliveryInfo = itemDeliveryInfo;
        this.itemDeliveryFee = itemDeliveryFee;
    }

    public void addEvent(SidedishEvent sidedishEvent) {
        SidedishEventItem eventItem = new SidedishEventItem(sidedishEvent.getId());
        eventItems.add(eventItem);
    }

    public void addImage(SidedishImage sidedishImage) {
        sidedishItemImages.add(new SidedishItemImage(sidedishImage.getId(), id));
    }

    protected SidedishItem() {
    }

    public Long getId() {
        return id;
    }

    public String getItemName() {
        return itemName;
    }

    public String getItemDescription() {
        return itemDescription;
    }

    public int getItemSalePrice() {
        return itemSalePrice;
    }

    public int getItemNormalPrice() {
        return itemNormalPrice;
    }

    public int getItemQuantity() {
        return itemQuantity;
    }

    public int getPointRate() {
        return itemPointRate;
    }

    public String getItemDeliveryInfo() {
        return itemDeliveryInfo;
    }

    public String getItemDeliveryFee() {
        return itemDeliveryFee;
    }

    public Set<SidedishEventItem> getEventItems() {
        return eventItems;
    }

    public int getItemPointRate() {
        return itemPointRate;
    }

    public List<SidedishItemImage> getSidedishItemImages() {
        return sidedishItemImages;
    }

    @Override
    public String toString() {
        return "SidedishItem{" +
                "id=" + id +
                ", itemName='" + itemName + '\n' +
                ", itemDescription='" + itemDescription + '\n' +
                ", itemSalePrice=" + itemSalePrice +
                ", itemNormalPrice=" + itemNormalPrice +
                ", itemQuantity=" + itemQuantity +
                ", itemPointRate=" + itemPointRate +
                ", itemDeliveryInfo='" + itemDeliveryInfo + '\n' +
                ", itemDeliveryFee='" + itemDeliveryFee + '\n' +
                ", eventItems=" + eventItems + '\n' +
                ", sidedishItemImages=" + sidedishItemImages + '\n' +
                '}';
    }
}
