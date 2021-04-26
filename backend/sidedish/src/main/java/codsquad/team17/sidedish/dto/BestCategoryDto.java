package codsquad.team17.sidedish.dto;

import codsquad.team17.sidedish.domain.BestCategory;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

import java.util.List;

@JsonPropertyOrder({"best_category_id", "best_category_name", "items"})
public class BestCategoryDto {
    @JsonProperty("best_category_id")
    private final Long bestCategoryId;

    @JsonProperty("best_category_name")
    private final String bestCategoryName;

    private final List<ItemDto> items;

    public BestCategoryDto(BestCategory entity, List<ItemDto> items) {
        this.bestCategoryId = entity.getBestCategoryId();
        this.bestCategoryName = entity.getBestCategoryName();
        this.items = items;
    }

    public Long getBestCategoryId() {
        return bestCategoryId;
    }

    public String getBestCategoryName() {
        return bestCategoryName;
    }

    public List<ItemDto> getItems() {
        return items;
    }
}
