package com.team15.sidedish.controller;

import com.team15.sidedish.dto.ItemDTO;
import com.team15.sidedish.service.DishService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class DishController {
    private final Logger logger = LoggerFactory.getLogger(DishController.class);
    private final DishService dishService;

    public DishController(DishService dishService) {
        this.dishService = dishService;
    }

    @GetMapping("/dishes")
    public List<ItemDTO> showDishByHash() {
        logger.info("Test show dishes");
        return dishService.showDishes();
    }

    @GetMapping("/dish/{hash}")
    public ItemDTO showSingleDish(@PathVariable String hash) {
        logger.info("Show single dish by hash");
        return dishService.showSingleDish(hash);

    }

//    @GetMapping("/dish/{sectionName}")
//    public List<Dish> showDishesBySectionName(@PathVariable String sectionName) {
//        return dishService.showDishesBySectionName(sectionName);
//    }
}
