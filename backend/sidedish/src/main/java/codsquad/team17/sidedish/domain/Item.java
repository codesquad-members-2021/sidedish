package codsquad.team17.sidedish.domain;

import codsquad.team17.sidedish.dto.OrderDto;
import org.springframework.data.annotation.Id;

import java.math.BigDecimal;

public class Item {

    @Id
    private Long itemId;
    private String title;

    private String description;

    private String badge;

    private BigDecimal normalPrice;
    private BigDecimal salePrice;
    private int stock;

    private Long dishCategoryId;
    private Long bestCategoryId;


    public Item() {
    }

    public Item(Long itemId, String title, String description, String badge, BigDecimal normalPrice, BigDecimal salePrice, int stock, Long dishCategoryId, Long bestCategoryId) {
        this.itemId = itemId;
        this.title = title;
        this.description = description;
        this.badge = badge;
        this.normalPrice = normalPrice;
        this.salePrice = salePrice;
        this.stock = stock;
        this.dishCategoryId = dishCategoryId;
        this.bestCategoryId = bestCategoryId;
    }

    public Long getItemId() {
        return itemId;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public String getBadge() {
        return badge;
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

    public void updateStock(OrderDto dto) {
        this.stock = dto.getStock();
    }
}
