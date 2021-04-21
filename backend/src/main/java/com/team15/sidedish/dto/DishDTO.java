package com.team15.sidedish.dto;

public class DishDTO {
    /*
        {"detail_hash":"H9881",
        "image":"https://cdn.bmf.kr/_data/product/H9881/f2a7b4df359c850b1a9eb57e17ddf6fc.jpg",
        "alt":"[소중한식사] 경상도 한상차림",
        "delivery_type":["새벽배송","전국택배"],

        "title":"[소중한식사] 경상도 한상차림",
        "description":"경상도 명물 요리 세 가지를 한 상에!",
        "n_price":"39,000",
        "s_price":"31,200원",
        "badge":["이벤트특가"]
     */

    private String detailHash;
    private String image;
    private String alt;
    private String deliveryType;
    private String title;
    private String description;
    private Integer nPrice;
    private Integer sPrice;
    private String[] badge;

    public DishDTO(String detailHash, String image, String alt, String deliveryType, String title, String description, Integer nPrice, Integer sPrice, String[] badge) {
        this.detailHash = detailHash;
        this.image = image;
        this.alt = alt;
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
