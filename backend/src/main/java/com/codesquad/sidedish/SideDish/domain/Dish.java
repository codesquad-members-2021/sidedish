package com.codesquad.sidedish.SideDish.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.data.relational.core.mapping.Table;

import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

@Table("DISH")
public class Dish {

    private final String detailHash;
    private final String image;
    private final String title;
    private final String description;
    private final int price;
    private final int salePrice;
    private final int point;
    private final String deliveryInfo;
    private final int deliveryFee;
    private final long categoryId;
    private final int quantity;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm", timezone = "Asia/Seoul")
    private LocalDateTime currentDateTime;

    private Set<DishSale> dishSales = new HashSet<>();
    private Set<DishDelivery> dishDeliveries = new HashSet<>();
    private Set<DishImage> dishImages = new HashSet<>();

    public Dish(String detailHash, String image, String title, String description, int price, int salePrice, int point, String deliveryInfo, int deliveryFee, long categoryId, int quantity) {
        this.detailHash = detailHash;
        this.image = image;
        this.title = title;
        this.description = description;
        this.price = price;
        this.salePrice = salePrice;
        this.point = point;
        this.deliveryInfo = deliveryInfo;
        this.deliveryFee = deliveryFee;
        this.categoryId = categoryId;
        this.quantity = quantity;
        this.currentDateTime = LocalDateTime.now();
    }

    public void addImage(DishImage... dishImages) {
        for (DishImage dishImage : dishImages) {
            this.dishImages.add(dishImage);
        }
    }

    public String getDetailHash() {
        return detailHash;
    }

    public String getImage() {
        return image;
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

    public int getSalePrice() {
        return salePrice;
    }

    public int getPoint() {
        return point;
    }

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public int getDeliveryFee() {
        return deliveryFee;
    }

    public long getCategoryId() {
        return categoryId;
    }

    public int getQuantity() {
        return quantity;
    }

    public Set<DishImage> getDishImages() {
        return dishImages;
    }

    public Set<DishSale> getDishSales() {
        return dishSales;
    }

    public Set<DishDelivery> getDishDeliveries() {
        return dishDeliveries;
    }

    public LocalDateTime getCurrentDateTime() {
        return currentDateTime;
    }

    @Override
    public String toString() {
        return "Dish{" +
                "detailHash='" + detailHash + '\'' +
                ", image='" + image + '\'' +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", price=" + price +
                ", salePrice=" + salePrice +
                ", point=" + point +
                ", deliveryInfo='" + deliveryInfo + '\'' +
                ", deliveryFee=" + deliveryFee +
                ", categoryId=" + categoryId +
                ", quantity=" + quantity +
                ", currentDateTime=" + currentDateTime +
                '}';
    }

}
