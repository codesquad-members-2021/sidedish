package com.codesquad.sidedish.category.domain;

import com.codesquad.sidedish.event.domain.dto.SidedishEventDTO;
import com.codesquad.sidedish.image.domain.SidedishImage;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public class SidedishDetailItemDTO {

    private Long id;
    private List<String> detailImages;
    private List<String> descriptionImages;
    private String name;
    private String description;
    private int normalPrice;
    private int salePrice;
    private Set<SidedishEventDTO> eventBadgeList;
    private int PointRate;
    private boolean isPurchasable;
    private String DeliveryInfo;
    private String DeliveryFee;

    public SidedishDetailItemDTO(SidedishItem sidedishItem, Set<SidedishEventDTO> eventBadgeList,
                                 List<SidedishImage> detailImages, List<SidedishImage> descriptionImages) {
        this.id = sidedishItem.getId();
        this.name = sidedishItem.getItemName();
        this.description = sidedishItem.getItemDescription();
        this.normalPrice = sidedishItem.getItemNormalPrice();
        this.salePrice = sidedishItem.getItemSalePrice();
        this.PointRate = sidedishItem.getPointRate();
        this.DeliveryInfo = sidedishItem.getItemDeliveryInfo();
        this.DeliveryFee = sidedishItem.getItemDeliveryFee();

        this.detailImages = detailImages.stream().map(SidedishImage::getImageUrl).collect(Collectors.toList());
        this.descriptionImages = descriptionImages.stream().map(SidedishImage::getImageUrl).collect(Collectors.toList());

        this.isPurchasable = sidedishItem.isPurchasable();
        this.eventBadgeList = eventBadgeList;
    }

    @Override
    public String toString() {
        return "SidedishItemDetailDTO{" +
                "id=" + id +
                ", detailImages=" + detailImages + '\n' +
                ", descriptionImages=" + descriptionImages + '\n' +
                ", name='" + name + '\n' +
                ", description='" + description + '\n' +
                ", normalPrice=" + normalPrice +
                ", salePrice=" + salePrice +
                ", eventBadgeList=" + eventBadgeList +
                ", PointRate=" + PointRate +
                ", isPurchasable=" + isPurchasable +
                ", DeliveryInfo='" + DeliveryInfo + '\n' +
                ", DeliveryFee='" + DeliveryFee + '\n' +
                '}';
    }

    public Long getId() {
        return id;
    }

    public List<String> getDetailImages() {
        return detailImages;
    }

    public List<String> getDescriptionImages() {
        return descriptionImages;
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

    public int getPointRate() {
        return PointRate;
    }

    public boolean isPurchasable() {
        return isPurchasable;
    }

    public String getDeliveryInfo() {
        return DeliveryInfo;
    }

    public String getDeliveryFee() {
        return DeliveryFee;
    }
}
