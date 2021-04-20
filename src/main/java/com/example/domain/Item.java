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
    private final Long id;
    private final String title;
    private final String description;
    private final int price;

    @Column("BADGE")
    private final String badges;

    @Column("DELIVERY")
    private final String deliveryTypes;

    private final String image;

    @PersistenceConstructor
    public Item(Long id, String title, String description, int price, String badges, String deliveryTypes, String image) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.price = price;
        this.badges = badges;
        this.deliveryTypes = deliveryTypes;
        this.image = image;
    }

    public Item withId(Long id, String title, String description, int price, String badges, String deliveryTypes, String image){
        return new Item(id, title, description, price, badges, deliveryTypes, image);
    }

    public static Item of(String title, String description, int price, String badges, String deliveryTypes, String image){
        return new Item(null, title, description, price, badges, deliveryTypes, image);
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
