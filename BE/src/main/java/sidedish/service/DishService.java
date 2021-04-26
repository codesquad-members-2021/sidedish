package sidedish.service;

import org.springframework.stereotype.Service;
import sidedish.domain.Category;
import sidedish.domain.Dish;
import sidedish.exception.DishNotFoundException;
import sidedish.repository.DishRepository;
import sidedish.service.dto.DetailDishDTO;
import sidedish.service.dto.RequestDishDTO;

import java.util.List;

@Service
public class DishService {

    private final DishRepository dishRepository;
    private final CategoryService categoryService;

    public DishService(DishRepository dishRepository, CategoryService categoryService) {
        this.dishRepository = dishRepository;
        this.categoryService = categoryService;
    }

    public Dish findById(Long id) {
        Dish dish = dishRepository.findById(id).orElseThrow(DishNotFoundException::new);
        return dish;
    }

    public DetailDishDTO convertToDetailDishDTO(String title, Long id) {
        Category category = categoryService.findByTitle(title);
        Dish dish = findById(id);
        isDishInCategory(category, dish);
        return new DetailDishDTO(dish);
    }

    public void saveDishes(List<RequestDishDTO> dishDTOs) {
        for (RequestDishDTO dishDTO : dishDTOs) {
            Category category = categoryService.findById(dishDTO.getCategoryId());
            Dish dish = dishDTO.createDish();
            category.addDish(dish);
            categoryService.save(category);
        }
    }

    private void isDishInCategory(Category category, Dish dish) {
        if (!category.hasDish(dish)) {
            throw new DishNotFoundException();
        }
    }
}
