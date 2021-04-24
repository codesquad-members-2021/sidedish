package com.team15.sidedish.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Arrays;

public class ItemDTO {

    @JsonProperty("detail_hash")
    private String detailHash;
    private String image;
    private String alt;

    @JsonProperty("delivery_type")
    private String deliveryType;
    private String title;
    private String description;

    @JsonProperty("n_price")
    private Integer nPrice;
    @JsonProperty("s_price")
    private Integer sPrice;
    private String[] badge;

    public ItemDTO(String detailHash, String image, String deliveryType, String title, String description, Integer nPrice, Integer sPrice, String[] badge) {
        this.detailHash = detailHash;
        this.image = image;
        this.alt = title;
        this.deliveryType = deliveryType;
        this.title = title;
        this.description = description;
        this.nPrice = nPrice;
        this.sPrice = sPrice;
        this.badge = badge;
    }

    public String getDetailHash() {
        return detailHash;
    }

    public String getImage() {
        return image;
    }

    public String getAlt() {
        return alt;
    }

    public String getDeliveryType() {
        return deliveryType;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public Integer getnPrice() {
        return nPrice;
    }

    public Integer getsPrice() {
        return sPrice;
    }

    public String[] getBadge() {
        return badge;
    }

    @Override
    public String toString() {
        return "ItemDTO{" +
                "detailHash='" + detailHash + '\'' +
                ", image='" + image + '\'' +
                ", alt='" + alt + '\'' +
                ", deliveryType='" + deliveryType + '\'' +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", nPrice=" + nPrice +
                ", sPrice=" + sPrice +
                ", badge=" + Arrays.toString(badge) +
                '}';
    }
}
