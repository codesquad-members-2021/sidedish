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
import sidedish.service.dto.RequestDishDTO;

import java.util.List;

@RestController
@RequestMapping("/banchan-code")
public class DishController {

    private final DishRepository dishRepository;
    private final CategoryRepository categoryRepository;
    Logger logger = LoggerFactory.getLogger(DishController.class);

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
    public void createDish(@RequestBody List<RequestDishDTO> dishDTOs) {
        for (RequestDishDTO dishDTO : dishDTOs) {
            Category category = categoryRepository.findById(dishDTO.getCategoryId()).orElseThrow(CategoryNotFoundException::new);
            Dish dish = dishDTO.createDish();
            category.addDish(dish);
            categoryRepository.save(category);
        }
    }
}
