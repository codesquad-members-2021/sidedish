package sidedish.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import sidedish.domain.Category;
import sidedish.domain.Dish;
import sidedish.exception.CategoryNotFoundException;
import sidedish.exception.DishNotFoundException;
import sidedish.repository.CategoryRepository;
import sidedish.repository.DishRepository;
import sidedish.service.dto.DetailDishDTO;

@RestController
@RequestMapping("/banchan-code")
public class DishController {

    Logger logger = LoggerFactory.getLogger(DishController.class);

    private final DishRepository dishRepository;
    private final CategoryRepository categoryRepository;

    public DishController(DishRepository dishRepository, CategoryRepository categoryRepository) {
        this.dishRepository = dishRepository;
        this.categoryRepository = categoryRepository;
    }

    @GetMapping("/main/{id}")
    public ResponseEntity<DetailDishDTO> detailPage(@PathVariable Long id) {
        Dish dish = dishRepository.findById(id).orElseThrow(DishNotFoundException::new);
        DetailDishDTO detailDishDTO = new DetailDishDTO(dish);
        return ResponseEntity.ok(detailDishDTO);
    }

    @PostMapping("/dish")
    public ResponseEntity<?> createDish(@RequestBody DetailDishDTO dishDTO) {

        logger.info("dish: {}", dishDTO);
        Dish dish = new Dish(dishDTO);
        logger.info("dish: {}", dish);
        Category category = categoryRepository.findCategoryByTitle("main").orElseThrow(CategoryNotFoundException::new);
        category.addDish(dish);
        categoryRepository.save(category);
        dishRepository.save(dish);
        return ResponseEntity.ok().build();
    }
}
