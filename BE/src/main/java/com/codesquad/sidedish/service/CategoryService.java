package com.codesquad.sidedish.service;

import com.codesquad.sidedish.exception.NotFoundException;
import com.codesquad.sidedish.domain.Category;
import com.codesquad.sidedish.domain.Dish;
import com.codesquad.sidedish.repository.CategoryRepository;
import org.springframework.stereotype.Service;

@Service
public class CategoryService {

    private CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public Category findCategoryByType(String type) {
        return categoryRepository.findCategoryByType(type).orElseThrow(() -> new NotFoundException("존재하지 않는 카테코리입니다."));
    }

    public Dish findDishByTypeAndId(String type, String dishId) {
        Category category = findCategoryByType(type);
        return category.getDishByDishId(dishId);
    }

    public boolean orderDish(String type, String dishId, int orderSize) {
        Dish dish = findDishByTypeAndId(type, dishId);
        if (dish.checkStock(orderSize)) {
            dish.updateStock(orderSize);
            addDish(type,dish);
            return true;
        }
        return false;
    }

    public void addDish(String type, Dish dish) {
        Category category = findCategoryByType(type);
        category.addDish(dish);
        categoryRepository.save(category);
    }
}
