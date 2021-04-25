package com.mj_eno.sidedish.web.dto;

import com.mj_eno.sidedish.domain.dish.Dish;

import java.util.List;

public class DishResponseDTO {

    private final String detailHash;
    private final String image;
    private final String alt;
    private final String deliveryType;
    private final String title;
    private final String description;
    private final int nPrice;
    private final int sPrice;
    private final List<String> badges;

    public DishResponseDTO(Dish dish, String image, List<String> badges) {
        this.detailHash = dish.getHash();
        this.image = image;
        this.alt = dish.getAlt();
        this.deliveryType = dish.getDeliveryType();
        this.title = dish.getTitle();
        this.description = dish.getDescription();
        this.nPrice = dish.getnPrice();
        this.sPrice = dish.getsPrice();
        this.badges = badges;
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

    public int getnPrice() {
        return nPrice;
    }

    public int getsPrice() {
        return sPrice;
    }

    public List<String> getBadges() {
        return badges;
    }
}
