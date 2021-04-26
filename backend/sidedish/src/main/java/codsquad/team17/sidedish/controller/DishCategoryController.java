package codsquad.team17.sidedish.controller;

import codsquad.team17.sidedish.dto.DishCategoryDto;
import codsquad.team17.sidedish.service.DishCategoryService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/dish")
public class DishCategoryController {

    private final DishCategoryService dishCategoryService;

    public DishCategoryController(DishCategoryService dishCategoryService) {
        this.dishCategoryService = dishCategoryService;
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
