package codsquad.team17.sidedish.dto;

import codsquad.team17.sidedish.domain.Image;
import codsquad.team17.sidedish.domain.Item;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;


@JsonPropertyOrder({"item_id", "title", "image", "price","url"})
public class RecommandedItemDto {
    private static final String URL = "";

    @JsonProperty("item_id")
    private final Long itemId;

    private final String title;

    private final String image;

    private final int price;

    @JsonProperty("url")
    private final String itemUrl;

    public RecommandedItemDto (Item entity, Image image) {
        this.itemId = entity.getItemId();
        this.title = entity.getTitle();
        this.image = image.getUrl();

        this.price = entity.getNormalPrice().intValue();
        this.itemUrl = URL + URL + "/dish" + "/detail" + "/" + itemId;
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

    public String getItemUrl() {
        return itemUrl;
    }
}
