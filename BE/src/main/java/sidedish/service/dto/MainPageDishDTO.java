package sidedish.service.dto;

import sidedish.domain.Dish;
import sidedish.service.ConvertUtils;

import java.util.List;

public class MainPageDishDTO {

    private Long id;
    private String name;
    private String top_image;
    private String description;
    private List<Integer> prices;

    public MainPageDishDTO(Dish dish) {
        this.id = dish.getId();
        this.name = dish.getName();
        this.top_image = dish.getTopImage();
        this.description = dish.getDescription();
        this.prices = ConvertUtils.convertToIntegerList(dish.getPrices());
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getTop_image() {
        return top_image;
    }

    public String getDescription() {
        return description;
    }

    public List<Integer> getPrices() {
        return prices;
    }
}
