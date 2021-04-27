package com.team15.sidedish.controller;

import com.team15.sidedish.dto.DishDTO;
import com.team15.sidedish.service.DishService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

@RestController
public class ItemController {
    private final Logger logger = LoggerFactory.getLogger(ItemController.class);
    private final DishService dishService;

    public ItemController(DishService dishService) {
        this.dishService = dishService;
    }

    @GetMapping("/dish/{hash}")
    public DishDTO showSingleDish(@PathVariable String hash) {
        return dishService.showSingleDish(hash);
    }

    @GetMapping("/section/{sectionName}")
    public HashMap<String, List<DishDTO>> showDishesBySectionName(@PathVariable String sectionName){
        HashMap<String, List<DishDTO>> items = new HashMap<>();
        items.put("main_items", dishService.showDishsBySection(sectionName));
        return items;
    }

}
