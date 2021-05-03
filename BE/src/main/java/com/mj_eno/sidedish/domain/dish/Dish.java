package com.mj_eno.sidedish.domain.dish;

import com.mj_eno.sidedish.domain.Image.Image;
import com.mj_eno.sidedish.domain.detailImage.DetailImage;
import com.mj_eno.sidedish.domain.dishBadge.DishBadge;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Embedded;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Dish {

    @Id
    private Long id;
    private String hash;
    private String alt;
    private String title;
    private String description;
    @Embedded.Nullable
    private Price price;
    private int stock;
    @Embedded.Nullable
    private Delivery delivery;
    private int menuCategoryId;
    private Integer bestMenuCategoryId;
    private List<Image> images = new ArrayList<>();
    private List<DetailImage> detailImages = new ArrayList<>();
    private List<DishBadge> dishBadges = new ArrayList<>();

    public Dish(String hash, int stock) {
        this.hash = hash;
        this.stock = stock;
    }

    public String getTopImageUrl() {
        return images.stream()
                .filter(Image::isTop)
                .map(Image::getUrl)
                .collect(Collectors.toList())
                .get(0);
    }

    public List<String> getImagesUrl() {
        return images.stream()
                .map(Image::getUrl)
                .collect(Collectors.toList());
    }

    public List<String> getDetailImagesUrl() {
        return detailImages.stream()
                .map(DetailImage::getUrl)
                .collect(Collectors.toList());
    }

    public List<Integer> getBadgesId() {
        return dishBadges.stream()
                .map(DishBadge::getBadgeId)
                .collect(Collectors.toList());
    }

    public void order(Dish dish) {
        this.stock -= dish.stock;
    }

    public boolean orderCheck(Dish dish) {
        int orderQuantity = dish.getStock();
        return (orderQuantity >= 0) && (stock - orderQuantity >= 0);
    }

    public Long getId() {
        return id;
    }

    public String getHash() {
        return hash;
    }

    public String getAlt() {
        return alt;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public Price getPrice() {
        return price;
    }

    public int getnPrice() {
        return price.getnPrice();
    }

    public int getsPrice() {
        return price.getsPrice();
    }

    public int getPoint() {
        return price.getPoint();
    }

    public int getStock() {
        return stock;
    }

    public Delivery getDelivery() {
        return delivery;
    }

    public String getDeliveryType() {
        return delivery.getDeliveryType();
    }

    public String getDeliveryInfo() {
        return delivery.getDeliveryInfo();
    }

    public String getDeliveryFee() {
        return delivery.getDeliveryFee();
    }

    public int getMenuCategoryId() {
        return menuCategoryId;
    }

    public int getBestMenuCategoryId() {
        return bestMenuCategoryId;
    }

    public List<Image> getImages() {
        return images;
    }

    public List<DetailImage> getDetailImages() {
        return detailImages;
    }

    public List<DishBadge> getDishBadges() {
        return dishBadges;
    }
}
