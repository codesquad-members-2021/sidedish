package codsquad.team17.sidedish.controller;

import codsquad.team17.sidedish.dto.DishCategoryDto;
import codsquad.team17.sidedish.service.DishCategoryService;
import codsquad.team17.sidedish.service.ImageService;
import codsquad.team17.sidedish.service.ItemService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DishCategoryController {

    private final DishCategoryService dishCategoryService;
    private final ItemService itemService;
    private final ImageService imageService;

    public DishCategoryController(DishCategoryService dishCategoryService, ItemService itemService, ImageService imageService) {
        this.dishCategoryService = dishCategoryService;
        this.itemService = itemService;
        this.imageService = imageService;
    }

    @GetMapping("/main")
    public ResponseEntity<DishCategoryDto> getMainDishCategory() {
        return new ResponseEntity(dishCategoryService.getDishCategoryDto(1L), HttpStatus.OK);
    }

    @GetMapping("/soup")
    public ResponseEntity getSoupDishCategory() {
        return new ResponseEntity(dishCategoryService.getDishCategoryDto(2L), HttpStatus.OK);
    }

    @GetMapping("/side")
    public ResponseEntity getSideDishCategory() {
        return new ResponseEntity(dishCategoryService.getDishCategoryDto(3L), HttpStatus.OK);
    }
}
