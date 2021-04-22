package codsquad.team17.sidedish.dto;

import java.math.BigDecimal;
import java.util.List;

public class ItemDto {
    private Long itemId;
    private String title;
    private String description;

    private BigDecimal n_price;
    private BigDecimal s_price;

    private List<String> badge;
    private String image;

    private Long dishCategoryId;

    public ItemDto(){

    }
}
