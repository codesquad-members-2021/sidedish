package com.team15.sidedish.controller;

import com.team15.sidedish.dto.ItemDTO;
import com.team15.sidedish.service.ItemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ItemController {
    private final Logger logger = LoggerFactory.getLogger(ItemController.class);
    private final ItemService itemService;

    public ItemController(ItemService itemService) {
        this.itemService = itemService;
    }

    @GetMapping("/dish/{hash}")
    public ItemDTO showSingleDish(@PathVariable String hash) {
        logger.info("Show single dish by hash");
        return itemService.showSingleDish(hash);

    }

    @GetMapping("/main")
    public List<ItemDTO> showMainDishes(){
        return itemService.showDishsBySection("main");
    }

    @GetMapping("/soup")
    public List<ItemDTO> showSoupDishes(){
        return itemService.showDishsBySection("soup");
    }

    @GetMapping("/side")
    public List<ItemDTO> showSideDishes(){
        return itemService.showDishsBySection("side");
    }

}
