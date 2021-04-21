package com.example.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;
import org.springframework.data.annotation.Version;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.MappedCollection;
import org.springframework.data.relational.core.mapping.Table;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

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

    @PersistenceConstructor
    public Item(String id, String title, String description, int price, String badges, String deliveryTypes, String image, int stock) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.price = price;
        this.badges = badges;
        this.deliveryTypes = deliveryTypes;
        this.image = image;
        this.stock = stock;
    }

    public static Item of(String title, String description, int price, String badges, String deliveryTypes, String image, int stock){
        return new Item(UUID.randomUUID().toString(), title, description, price, badges, deliveryTypes, image, stock);
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

}
