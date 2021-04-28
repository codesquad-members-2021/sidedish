package com.codesquad.sidedish.SideDish.dto;

import com.codesquad.sidedish.SideDish.domain.delivery.DishDelivery;
import com.codesquad.sidedish.SideDish.domain.dish.Dish;
import com.codesquad.sidedish.SideDish.domain.sale.DishSale;
import com.codesquad.sidedish.SideDish.domain.sale.Sale;
import javafx.util.Builder;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public class DishDto {
    private final String detailHash;
    private final String image;
    private final String title;
    private final String description;
    private final int price;
    private final int salePrice;


    private Set<SaleDto> badgeList;


    public static DishDto from(Dish dish) {
        return new Builder()
                .detailHash(dish.getDetailHash())
                .image(dish.getImage())
                .title(dish.getTitle())
                .description(dish.getDescription())
                .price(dish.getPrice())
                .salePrice(dish.getSalePrice())
                .badgeList(dish.getDishSales().stream()
                        .map(dishSale -> new SaleDto(new Sale("badge", "saleType", 0))) // TODO: 가라 데이터를 정상
                        .collect(Collectors.toSet()))
                .build();
    }

    public DishDto(Builder builder) {
        this.detailHash = builder.detailHash;
        this.image = builder.image;
        this.title = builder.title;
        this.description = builder.description;
        this.price = builder.price;
        this.salePrice = builder.salePrice;
        this.badgeList = builder.badgeList;
    }

    public static class Builder {
        private  String detailHash;
        private  String image;
        private  String title;
        private  String description;
        private  int price;
        private  int salePrice;

        private Set<SaleDto> badgeList;

        public DishDto build() {
            return new DishDto(this);
        }

        public Builder detailHash(String detailHash) {
            this.detailHash = detailHash;
            return this;
        }

        public Builder image(String image) {
            this.image = image;
            return this;
        }

        public Builder title(String title) {
            this.title = title;
            return this;
        }

        public Builder description(String description) {
            this.description = description;
            return this;
        }

        public Builder price(int price) {
            this.price = price;
            return this;
        }

        public Builder salePrice(int salePrice) {
            this.salePrice = salePrice;
            return this;
        }

        public Builder badgeList(Set<SaleDto> badgeList) {
            this.badgeList = badgeList;
            return this;
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

    public Set<SaleDto> getBadgeList() {
        return badgeList;
    }
}
