package com.team15.sidedish.dto;

public class ItemDTO {

    private String detailHash;
    private String image;
    private String alt;
    private String deliveryType;
    private String title;
    private String description;
    private Integer nPrice;
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

}
