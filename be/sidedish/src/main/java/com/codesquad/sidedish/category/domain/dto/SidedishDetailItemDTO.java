package com.codesquad.sidedish.category.domain.dto;

import com.codesquad.sidedish.category.domain.SidedishItem;
import com.codesquad.sidedish.event.domain.SidedishEvent;
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

    public SidedishDetailItemDTO(SidedishItem item, Set<SidedishEvent> eventBadgeList,
                                 List<SidedishImage> detailImages, List<SidedishImage> descriptionImages) {
        this.id = item.getId();
        this.name = item.getItemName();
        this.description = item.getItemDescription();
        this.normalPrice = item.getItemNormalPrice();
        this.salePrice = item.calculateSalePrice(eventBadgeList);
        this.PointRate = item.getPointRate();
        this.DeliveryInfo = item.getItemDeliveryInfo();
        this.DeliveryFee = item.getItemDeliveryFee();

        this.detailImages = detailImages.stream().map(SidedishImage::getImageUrl).collect(Collectors.toList());
        this.descriptionImages = descriptionImages.stream().map(SidedishImage::getImageUrl).collect(Collectors.toList());

        this.isPurchasable = item.isPurchasable();
        this.eventBadgeList = SidedishEventDTO.eventSetToDtoSet(eventBadgeList);
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
}
