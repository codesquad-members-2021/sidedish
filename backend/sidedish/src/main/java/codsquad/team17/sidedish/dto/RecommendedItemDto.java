package codsquad.team17.sidedish.dto;

import codsquad.team17.sidedish.domain.Image;
import codsquad.team17.sidedish.domain.Item;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;


@JsonPropertyOrder({"item_id", "title", "image", "price","detail_url"})
public class RecommendedItemDto {
    private static final String URL = "http://ec2-15-164-123-251.ap-northeast-2.compute.amazonaws.com:8080";

    @JsonProperty("item_id")
    private final Long itemId;

    private final String title;

    private final String image;

    private final int price;

    @JsonProperty("detail_url")
    private final String detailUrl;

    public RecommendedItemDto(Item entity, Image image) {
        this.itemId = entity.getItemId();
        this.title = entity.getTitle();
        this.image = image.getUrl();

        this.price = entity.getNormalPrice().intValue();
        this.detailUrl = URL + "/dish" + "/detail" + "/" + itemId;
    }

    public static String getURL() {
        return URL;
    }

    public Long getItemId() {
        return itemId;
    }

    public String getTitle() {
        return title;
    }

    public String getImage() {
        return image;
    }

    public int getPrice() {
        return price;
    }

    public String getDetailUrl() {
        return detailUrl;
    }
}
