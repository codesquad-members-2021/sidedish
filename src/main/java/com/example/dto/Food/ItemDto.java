package com.example.dto.Food;

public class ItemDto {
    public String detail_hash;
    public String image;
    public String alt;
    public String[] delivery_type;
    public String title;
    public String description;
    public String n_price;
    public String s_price;
    public String[] badge;

    public String getDetail_hash() {
        return detail_hash;
    }

    public void setDetail_hash(String detail_hash) {
        this.detail_hash = detail_hash;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getAlt() {
        return alt;
    }

    public void setAlt(String alt) {
        this.alt = alt;
    }

    public String[] getDelivery_type() {
        return delivery_type;
    }

    public void setDelivery_type(String[] delivery_type) {
        this.delivery_type = delivery_type;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getN_price() {
        return n_price;
    }

    public void setN_price(String n_price) {
        this.n_price = n_price;
    }

    public String getS_price() {
        return s_price;
    }

    public void setS_price(String s_price) {
        this.s_price = s_price;
    }

    public String[] getBadge() {
        return badge;
    }

    public void setBadge(String[] badge) {
        this.badge = badge;
    }
}
