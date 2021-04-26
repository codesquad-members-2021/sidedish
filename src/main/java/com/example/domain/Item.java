package com.example.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import java.util.Objects;

@Table(value = "ITEM")
public class Item {

    @Id
    private final String id;

    private final String title;

    private final String description;

    private final int price;

    private final int stock;

    @Column("BADGE")
    private final String badges;

    @Column("DELIVERY")
    private final String deliveryTypes;

    private final String image;

    @Column("DetailSection")
    private final String detailSection;

    @PersistenceConstructor
    private Item(String id, String title, String description, int price, String badges, String deliveryTypes, String image, int stock, String detailSection) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.price = price;
        this.badges = badges;
        this.deliveryTypes = deliveryTypes;
        this.image = image;
        this.stock = stock;
        this.detailSection = detailSection;
    }

    public static Item of(String id, String title, String description, int price, String badges, String deliveryTypes, String image, int stock, String detailSection){
        // 요구사항의 아이템 ID를 맞추기 위해 UUID 잠시 제거
        return new Item(id, title, description, price, badges, deliveryTypes, image, stock, detailSection);
    }

    public String getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public int getPrice() {
        return price;
    }

    public String getBadges() {
        return badges;
    }

    public String getDeliveryTypes() {
        return deliveryTypes;
    }

    public String getImage() {
        return image;
    }

    public int getStock() {
        return stock;
    }

    public String getDetailSection() {
        return detailSection;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Item item = (Item) o;
        return id.equals(item.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

}
