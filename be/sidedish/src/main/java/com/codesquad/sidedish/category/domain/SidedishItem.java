package com.codesquad.sidedish.category.domain;

import com.codesquad.sidedish.category.exception.OutOfStockException;
import com.codesquad.sidedish.event.domain.SidedishEvent;
import com.codesquad.sidedish.event.domain.SidedishEventItem;
import com.codesquad.sidedish.image.domain.SidedishImage;
import com.codesquad.sidedish.image.domain.SidedishImageTypeEnum;
import com.codesquad.sidedish.image.domain.SidedishItemImage;
import com.codesquad.sidedish.image.exception.ImageItemNotFoundException;
import org.springframework.data.annotation.Id;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public class SidedishItem {
    @Id
    private Long id;

    private final String itemName;
    private final String itemDescription;
    private final int itemNormalPrice;
    private int itemQuantity;
    private final int itemPointRate;
    private final String itemDeliveryInfo;
    private final String itemDeliveryFee;

    private final Set<SidedishEventItem> eventItems = new HashSet<>();

    private final List<SidedishItemImage> sidedishItemImages = new ArrayList<>();

    public SidedishItem(String itemName, String itemDescription, int itemNormalPrice,
                        int itemQuantity, int itemPointRate, String itemDeliveryInfo, String itemDeliveryFee) {
        this.itemName = itemName;
        this.itemDescription = itemDescription;
        this.itemNormalPrice = itemNormalPrice;
        this.itemQuantity = itemQuantity;
        this.itemPointRate = itemPointRate;
        this.itemDeliveryInfo = itemDeliveryInfo;
        this.itemDeliveryFee = itemDeliveryFee;
    }

    public int calculateSalePrice(Set<SidedishEvent> sidedishEvents) {
        int salePrice = itemNormalPrice;

        if (sidedishEvents.size() == 0) {
            return SidedishEvent.NOT_ON_SALE;
        }

        for (SidedishEvent currentEvent : sidedishEvents) {
            salePrice -= currentEvent.discount(itemNormalPrice);
        }
        if (salePrice < 0) {
            salePrice = 0;
        }
        return salePrice;
    }

    public boolean isSameId(Long itemId) {
        return id.equals(itemId);
    }

    public boolean order(int purchaseQuantity) {
        if (!isPurchasable(purchaseQuantity)) {
            throw new OutOfStockException();
        }
        this.itemQuantity -= purchaseQuantity;
        return true;
    }

    public boolean isPurchasable() {
        return itemQuantity > 0;
    }

    public boolean isPurchasable(int purchaseQuantity) {
        return itemQuantity >= purchaseQuantity;
    }

    public void addEvent(SidedishEvent sidedishEvent) {
        SidedishEventItem eventItem = new SidedishEventItem(sidedishEvent.getId());
        eventItems.add(eventItem);
    }

    public void addThumbnailImage(SidedishImage sidedishImage) {
        addImage(sidedishImage, SidedishImageTypeEnum.THUMBNAIL);
    }

    public void addDetailImage(SidedishImage sidedishImage) {
        addImage(sidedishImage, SidedishImageTypeEnum.DETAIL);
    }

    public void addDescriptionImage(SidedishImage sidedishImage) {
        addImage(sidedishImage, SidedishImageTypeEnum.DESCRIPTION);
    }

    private void addImage(SidedishImage sidedishImage, SidedishImageTypeEnum imageTypeEnum) {
        sidedishItemImages.add(new SidedishItemImage(sidedishImage.getId(), id, imageTypeEnum));
    }

    public SidedishItemImage findThumbnailImage() throws ImageItemNotFoundException {
        return sidedishItemImages.stream()
                .filter(SidedishItemImage::isThumbnailImage)
                .findFirst()
                .orElseThrow(ImageItemNotFoundException::new);
    }

    public List<Long> findImagesIdByType(SidedishImageTypeEnum imageTypeEnum) {
        return sidedishItemImages.stream()
                .filter(image -> image.isSameType(imageTypeEnum))
                .map(SidedishItemImage::getSidedishImage)
                .collect(Collectors.toList());
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
