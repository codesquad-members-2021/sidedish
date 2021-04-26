package sidedish.service.dto;

import sidedish.domain.Category;
import sidedish.domain.Dish;

import java.util.ArrayList;
import java.util.List;

public class CategoryDTO {

    private String title;
    private List<MainPageDishDTO> dishes;

    public CategoryDTO(Category category) {
        this.title = category.getTitle();
        this.dishes = convertToMainPageDishDTO(category);
    }

    private List<MainPageDishDTO> convertToMainPageDishDTO(Category category) {
        List<Dish> dishes = category.getDishes();
        List<MainPageDishDTO> mainPageDishDTOs = new ArrayList<>();
        for (Dish dish : dishes) {
            mainPageDishDTOs.add(new MainPageDishDTO(dish));
        }
        return mainPageDishDTOs;
    }

    public String getTitle() {
        return title;
    }

    public List<MainPageDishDTO> getDishes() {
        return dishes;
    }

}
