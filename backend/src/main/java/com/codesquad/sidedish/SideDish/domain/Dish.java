package com.codesquad.sidedish.SideDish.domain;

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
    private final Integer price;
    private final Integer salePrice;
    private final Integer point;
    private final String deliveryInfo;
    private final Integer deliveryFee;
    private final Long categoryId;
    private final Integer quantity;
    private final LocalDateTime currentDateTime;

    private final Set<Sale> sales = new HashSet<>();
    private final Set<Delivery> deliveries = new HashSet<>();
    private final Set<Image> images = new HashSet<>();

    public void addSale(Sale... sales) {
        for (Sale sale : sales) {
            this.sales.add(sale);
        }
    }

    public void addDelivery(Delivery... deliveries) {
        for (Delivery delivery : deliveries) {
            this.deliveries.add(delivery);
        }
    }

    public void addImage(Image... images) {
        for (Image image : images) {
            this.images.add(image);
        }
    }

    public Dish(String detailHash, String image, String title, String description, Integer price, Integer salePrice, Integer point, String deliveryInfo, Integer deliveryFee, Long categoryId, Integer quantity, LocalDateTime currentDateTime) {
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
        this.currentDateTime = currentDateTime;
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

    public Integer getPrice() {
        return price;
    }

    public Integer getSalePrice() {
        return salePrice;
    }

    public Integer getPoint() {
        return point;
    }

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public Integer getDeliveryFee() {
        return deliveryFee;
    }

    public Long getCategoryId() {
        return categoryId;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public LocalDateTime getCurrentDateTime() {
        return currentDateTime;
    }

    public Set<Sale> getSales() {
        return sales;
    }

    public Set<Delivery> getDeliveries() {
        return deliveries;
    }

    public Set<Image> getImages() {
        return images;
    }

    public boolean refreshable(long lastUpdated) {
        return false;
    }
}
