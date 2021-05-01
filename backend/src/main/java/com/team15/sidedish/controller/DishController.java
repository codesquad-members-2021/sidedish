package com.team15.sidedish.controller;

import com.team15.sidedish.dto.DishDAO;
import com.team15.sidedish.dto.SectionDishesDTO;
import com.team15.sidedish.service.DishService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DishController {
    private final Logger logger = LoggerFactory.getLogger(DishController.class);
    private final DishService dishService;

    public DishController(DishService dishService) {
        this.dishService = dishService;
    }

    @GetMapping("/dish/{hash}")
    public DishDAO showSingleDish(@PathVariable String hash) {
        return dishService.showSingleDish(hash);
    }

    @GetMapping("/section/{sectionName}")
    public SectionDishesDTO showDishesBySectionName(@PathVariable String sectionName){
        return SectionDishesDTO.of(sectionName, dishService.showDishsBySection(sectionName));
    }

}
