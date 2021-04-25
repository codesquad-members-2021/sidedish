package codsquad.team17.sidedish.dto;

import codsquad.team17.sidedish.domain.Image;
import codsquad.team17.sidedish.domain.Item;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.List;

public class ItemDto {
    private final Long item_id;
    private final String title;
    private final String description;

    @JsonProperty("n_price")
    private final BigDecimal normalPrice;

    @JsonProperty("s_price")
    private final BigDecimal salePrice;

    private final List<String> badge;
    private final String image;
    
    public ItemDto(Item entity, Image image) {
        this.item_id = entity.getItemId();
        this.title = entity.getTitle();
        this.description = entity.getDescription();
        this.normalPrice = entity.getnPrice();
        this.salePrice = entity.getsPrice();
        this.badge = parseBadge(entity.getBadge());
        this.image = image.getUrl();
    }

    private List<String> parseBadge(String badge) {
        return Arrays.asList(badge.split(", "));
    }

    public Long getItem_id() {
        return item_id;
    }

    public String getTitle() {
        return title;
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

    public List<String> getBadge() {
        return badge;
    }

    public String getImage() {
        return image;
    }
}
