package com.team15.sidedish.domain;

import org.springframework.data.annotation.Id;

public class Dish {
    @Id
    private String hash;
    private String topImage;
    private String title;
    private String description;
    private int nPrice;
    private int sPrice;
    private String sectionName;
    private int stock;

    public Dish(){ }

    public Dish(String hash, String topImage, String title, String description, int nPrice, int sPrice, String sectionName, int stock) {
        this.hash = hash;
        this.topImage = topImage;
        this.title = title;
        this.description = description;
        this.nPrice = nPrice;
        this.sPrice = sPrice;
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

    public int getnPrice() {
        return nPrice;
    }

    public int getsPrice() {
        return sPrice;
    }

    public String getSectionName() {
        return sectionName;
    }

    public int getStock() {
        return stock;
    }

    @Override
    public String toString() {
        return "Dish{" +
                "hash='" + hash + '\'' +
                ", topImage='" + topImage + '\'' +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", nPrice=" + nPrice +
                ", sPrice=" + sPrice +
                ", sectionName='" + sectionName + '\'' +
                ", stock=" + stock +
                '}';
    }
}
