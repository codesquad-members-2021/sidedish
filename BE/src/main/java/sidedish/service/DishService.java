package sidedish.service;

import org.springframework.stereotype.Service;
import sidedish.domain.Category;
import sidedish.domain.Dish;
import sidedish.exception.CategoryNotFoundException;
import sidedish.exception.DishNotFoundException;
import sidedish.repository.CategoryRepository;
import sidedish.repository.DishRepository;
import sidedish.service.dto.DetailDishDTO;
import sidedish.service.dto.RequestDishDTO;

import java.util.List;

@Service
public class DishService {

    private final DishRepository dishRepository;
    private final CategoryRepository categoryRepository;

    public DishService(DishRepository dishRepository, CategoryRepository categoryRepository) {
        this.dishRepository = dishRepository;
        this.categoryRepository = categoryRepository;
    }

    public Dish findById(Long id) {
        Dish dish = dishRepository.findById(id).orElseThrow(DishNotFoundException::new);
        return dish;
    }

    public DetailDishDTO createDetailDishDTO(String title, Long id) {
        Category category = categoryRepository.findCategoryByTitle(title).orElseThrow(CategoryNotFoundException::new);
        Dish dish = findById(id);
        category.hasDish(dish);
        return new DetailDishDTO(dish);
    }

    public void saveDishes(List<RequestDishDTO> dishDTOs) {
        for (RequestDishDTO dishDTO : dishDTOs) {
            Category category = categoryRepository.findById(dishDTO.getCategoryId()).orElseThrow(CategoryNotFoundException::new);
            Dish dish = dishDTO.createDish();
            category.addDish(dish);
            categoryRepository.save(category);
        }
    }
}
