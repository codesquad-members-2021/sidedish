package sidedish.service.dto;

import sidedish.domain.Dish;
import sidedish.service.TypeConvertUtils;

import java.util.List;

import static sidedish.service.TypeConvertUtils.*;

public class MainPageDishDTO {

    private Long id;
    private String name;
    private String topImage;
    private String description;
    private List<Integer> prices;
    private List<String> badges;

    public MainPageDishDTO(Dish dish) {
        this.id = dish.getId();
        this.name = dish.getName();
        this.topImage = dish.getTopImage();
        this.description = dish.getDescription();
        this.prices = convertPriceList(dish.getPrices());
        this.badges = convertBadgeList(dish.getBadges());
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getTopImage() {
        return topImage;
    }

    public String getDescription() {
        return description;
    }

    public List<Integer> getPrices() {
        return prices;
    }

    public List<String> getBadges() {
        return badges;
    }

    @Override
    public String toString() {
        return "MainPageDishDTO{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", top_image='" + topImage + '\'' +
                ", description='" + description + '\'' +
                ", prices=" + prices +
                '}';
    }
}
