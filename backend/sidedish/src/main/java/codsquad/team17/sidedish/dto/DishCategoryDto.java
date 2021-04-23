package codsquad.team17.sidedish.dto;

import codsquad.team17.sidedish.domain.DishCategory;

import java.util.List;

public class DishCategoryDto {
    private Long dish_category_id;
    private String dish_category_name;
    private List<ItemDto> items;

    public DishCategoryDto(DishCategory entity, List<ItemDto> items) {
        this.dish_category_id = entity.getDishCategoryId();
        this.dish_category_name = entity.getDishCategoryName();
        this.items = items;
    }

    public Long getDish_category_id() {
        return dish_category_id;
    }

    public String getDish_category_name() {
        return dish_category_name;
    }

    public List<ItemDto> getItems() {
        return items;
    }
}
