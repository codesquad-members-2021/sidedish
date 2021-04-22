package codsquad.team17.sidedish.domain;

import org.springframework.data.annotation.Id;

import java.math.BigDecimal;

public class Item {

    @Id
    private Long itemId;
    private String title;

    private String discription;

    private String badge;
    private BigDecimal nPrice;

    private BigDecimal sPrice;
    private int stock;

    private Long dishCategoryId;
    private Long bestCategoryId;


    public Item() {
    }

    public Item(Long itemId, String title, String discription, String badge, BigDecimal nPrice, BigDecimal sPrice, int stock, Long dishCategoryId, Long bestCategoryId) {
        this.itemId = itemId;
        this.title = title;
        this.discription = discription;
        this.badge = badge;
        this.nPrice = nPrice;
        this.sPrice = sPrice;
        this.stock = stock;
        this.dishCategoryId = dishCategoryId;
        this.bestCategoryId = bestCategoryId;
    }
}
