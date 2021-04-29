package com.codesquad.sidedish.service;

import com.codesquad.sidedish.domain.Category;
import com.codesquad.sidedish.domain.Dish;
import com.codesquad.sidedish.exception.NotFoundException;
import com.codesquad.sidedish.repository.CategoryRepository;
import com.codesquad.sidedish.util.Status;
import org.springframework.stereotype.Service;

@Service
public class DishService {

    private CategoryRepository categoryRepository;

    public DishService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public Dish findDishByDishId(String dishId) {
        Category category = categoryRepository.findCategoryByDishId(dishId).orElseThrow(() -> new NotFoundException(Status.NOTFOUND_DISH.getMessage()));
        return category.getDishByDishId(dishId);
    }

    public boolean orderDish(String dishId, int orderSize) {
        Dish dish = findDishByDishId(dishId);
        if (dish.checkStock(orderSize)) {
            dish.updateStock(orderSize);
            return true;
        }
        return false;
    }
}
