package codsquad.team17.sidedish.dto;

import java.math.BigDecimal;
import java.util.List;

public class ItemDto {
    private Long itemId;
    private String title;
    private String discription;

    private BigDecimal n_price;
    private BigDecimal s_price;

    private List<String> badge;
    private String image;

    private Long dishCategory;

    public ItemDto(){

    }

    public ItemDto(Long itemId, String title, String discription, BigDecimal n_price, BigDecimal s_price, List<String> badge, String image, Long dishCategory) {
        this.itemId = itemId;
        this.title = title;
        this.discription = discription;
        this.n_price = n_price;
        this.s_price = s_price;
        this.badge = badge;
        this.image = image;
        this.dishCategory = dishCategory;
    }


}
