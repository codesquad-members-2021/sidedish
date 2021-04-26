package codsquad.team17.sidedish.dto;

import codsquad.team17.sidedish.domain.DishCategory;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

import java.util.List;

@JsonPropertyOrder({"dish_category_id", "dish_category_name", "items"})
public class DishCategoryDto {
    @JsonProperty("dish_category_id")
    private final Long dishCategoryId;

    @JsonProperty("dish_category_name")
    private final String dishCategoryName;

    private final List<ItemDto> items;

    public DishCategoryDto(DishCategory entity, List<ItemDto> items) {
        this.dishCategoryId = entity.getDishCategoryId();
        this.dishCategoryName = entity.getDishCategoryName();
        this.items = items;
    }

    public Long getDishCategoryId() {
        return dishCategoryId;
    }

    public String getDishCategoryName() {
        return dishCategoryName;
    }

    public List<ItemDto> getItems() {
        return items;
    }
}
