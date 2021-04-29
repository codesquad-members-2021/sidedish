package sidedish.service.dto;

import sidedish.domain.Category;

import java.util.List;
import java.util.stream.Collectors;

public class CategoryDTO {

    private String title;
    private List<MainPageDishDTO> dishes;

    public CategoryDTO(Category category) {
        this.title = category.getTitle();
        this.dishes = category.getDishes().stream()
                .map(MainPageDishDTO::new)
                .collect(Collectors.toList());
    }

    public String getTitle() {
        return title;
    }

    public List<MainPageDishDTO> getDishes() {
        return dishes;
    }
}
