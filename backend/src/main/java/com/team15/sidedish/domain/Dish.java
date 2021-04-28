package com.team15.sidedish.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

@Table("dish")
public class Dish {
    @Id
    private String hash;
    private String topImage;
    private String title;
    private String description;
    private Integer normalPrice;
    private Integer specialPrice;
    private String sectionName;
    private Integer stock;

    public Dish(String hash, String topImage, String title, String description, Integer normalPrice, Integer specialPrice, String sectionName, Integer stock) {
        this.hash = hash;
        this.topImage = topImage;
        this.title = title;
        this.description = description;
        this.normalPrice = normalPrice;
        this.specialPrice = specialPrice;
        this.sectionName = sectionName;
        this.stock = stock;
    }

    public String getHash() {
        return hash;
    }

    public String getTopImage() {
        return topImage;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public Integer getNormalPrice() {
        return normalPrice;
    }

    public Integer getSpecialPrice() {
        return specialPrice;
    }

    public String getSectionName() {
        return sectionName;
    }

    public Integer getStock() {
        return stock;
    }

    @Override
    public String toString() {
        return "Dish{" +
                "hash='" + hash + '\'' +
                ", topImage='" + topImage + '\'' +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", normalPrice=" + normalPrice +
                ", specialPrice=" + specialPrice +
                ", sectionName='" + sectionName + '\'' +
                ", stock=" + stock +
                '}';
    }
}
