package com.codesquad.team14.domain;

import org.springframework.data.annotation.Id;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class Item {

    @Id
    private Long id;

    private String title;
    private String description;
    private int nPrice;
    private int sPrice;
    private List<Badge> badges;
    private List<DeliveryType> deliveryTypes;
    private String images;
    private Category category;

    public Item(String title, String description, int nPrice, int sPrice, Category category) {
        this.title = title;
        this.description = description;
        this.nPrice = nPrice;
        this.sPrice = sPrice;
        this.category = category;
    }

    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public int getNPrice() {
        return nPrice;
    }

    public int getSPrice() {
        return sPrice;
    }

    public List<Badge> getBadges() {
        return badges;
    }

    public List<DeliveryType> getDeliveryTypes() {
        return deliveryTypes;
    }

    public String getImages() {
        return images;
    }

    public Category getCategory() {
        return category;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setnPrice(int nPrice) {
        this.nPrice = nPrice;
    }

    public void setsPrice(int sPrice) {
        this.sPrice = sPrice;
    }

    public void setBadges(List<Badge> badges) {
        this.badges = badges;
    }

    public void setDeliveryTypes(List<DeliveryType> deliveryTypes) {
        this.deliveryTypes = deliveryTypes;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Item item = (Item) o;
        return Objects.equals(id, item.id) && Objects.equals(category, item.category);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, category);
    }
}
