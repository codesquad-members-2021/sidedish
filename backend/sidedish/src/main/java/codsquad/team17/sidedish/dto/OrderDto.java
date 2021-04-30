package codsquad.team17.sidedish.dto;

import codsquad.team17.sidedish.domain.Item;
import codsquad.team17.sidedish.exception.ItemStockEmptyException;

import java.math.BigDecimal;

public class OrderDto {

    private Long itemId;

    private String description;

    private BigDecimal normalPrice;

    private BigDecimal salePrice;

    private int stock;

    private Long dishCategoryId;

    private Long bestCategoryId;

    public OrderDto(Item item) {
        this.itemId = item.getItemId();
        this.description = item.getDescription();

        this.normalPrice = item.getNormalPrice();
        this.salePrice = item.getSalePrice();
        this.stock = item.getStock();

        this.dishCategoryId = item.getDishCategoryId();
        this.bestCategoryId = item.getBestCategoryId();
    }

    public void orderItem(int orderAmount) {
        if(this.stock - orderAmount < 0) {
            throw new ItemStockEmptyException();
        }
        this.stock = this.stock - orderAmount;
    }

    public Long getItemId() {
        return itemId;
    }

    public String getDescription() {
        return description;
    }

    public BigDecimal getNormalPrice() {
        return normalPrice;
    }

    public BigDecimal getSalePrice() {
        return salePrice;
    }

    public int getStock() {
        return stock;
    }

    public Long getDishCategoryId() {
        return dishCategoryId;
    }

    public Long getBestCategoryId() {
        return bestCategoryId;
    }
}
