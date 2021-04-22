package com.mj_eno.sidedish.web.dto;

import com.mj_eno.sidedish.domain.badge.Badge;
import com.mj_eno.sidedish.domain.dish.Dish;

import java.util.List;

public class MainDishResponseDTO {

    String hash;
    String image;
    String alt;
    String deliveryType;
    String title;
    String description;
    int nPrice;
    int sPrice;
    List<String> badges;

    public MainDishResponseDTO(Dish dish, String image, List<String> badges) {
        this.hash = dish.getHash();
        this.image = image;
        this.alt = dish.getAlt();
        this.deliveryType = dish.getDeliveryType();
        this.title = dish.getTitle();
        this.description = dish.getDescription();
        this.nPrice = dish.getnPrice();
        this.sPrice = dish.getsPrice();
        this.badges = badges;
    }

    public String getHash() {
        return hash;
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
