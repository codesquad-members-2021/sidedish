package sidedish.service.dto;

import sidedish.domain.Category;
import sidedish.domain.Dish;

import java.util.HashSet;
import java.util.Set;

public class CategoryDTO {

    private String title;
    private Set<MainPageDishDTO> dishes;

    public CategoryDTO(Category category) {
        this.title = category.getTitle();
        this.dishes = convertToMainPageDishDTO(category);
    }

    private Set<MainPageDishDTO> convertToMainPageDishDTO(Category category) {
        Set<Dish> dishes = category.getDishes();
        Set<MainPageDishDTO> mainPageDishDTOs = new HashSet<>();
        for (Dish dish : dishes) {
            mainPageDishDTOs.add(new MainPageDishDTO(dish));
        }
        return mainPageDishDTOs;
    }

    public String getTitle() {
        return title;
    }

    public Set<MainPageDishDTO> getDishes() {
        return dishes;
    }

}
