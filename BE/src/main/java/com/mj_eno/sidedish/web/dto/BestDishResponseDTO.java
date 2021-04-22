package com.mj_eno.sidedish.web.dto;

import com.mj_eno.sidedish.domain.badge.Badge;
import com.mj_eno.sidedish.domain.dish.Dish;

import java.util.List;

public class BestDishResponseDTO {

    String hash;
    String image;
    String alt;
    String deliveryType;
    String title;
    String description;
    int nPrice;
    int sPrice;
    List<Badge> badges;

    public BestDishResponseDTO(Dish dish) {
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

    public List<Badge> getBadges() {
        return badges;
    }
}
