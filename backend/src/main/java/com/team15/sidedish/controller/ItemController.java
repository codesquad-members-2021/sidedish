package com.team15.sidedish.controller;

import com.team15.sidedish.dto.BestDTO;
import com.team15.sidedish.dto.ItemDTO;
import com.team15.sidedish.service.ItemService;
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
    public HashMap<String, List<ItemDTO>> showMainDishes(){
        HashMap<String, List<ItemDTO>> items = new HashMap<>();
        items.put("main_items", itemService.showDishsBySection("main"));
        return items;
    }

    @GetMapping("/soup")
    public HashMap<String, List<ItemDTO>> showSoupDishes(){
        HashMap<String, List<ItemDTO>> items = new HashMap<>();
        items.put("soup_items", itemService.showDishsBySection("soup"));
        return items;
    }

    @GetMapping("/side")
    public HashMap<String, List<ItemDTO>> showSideDishes(){
        HashMap<String, List<ItemDTO>> items = new HashMap<>();
        items.put("side_items", itemService.showDishsBySection("side"));
        return items;
    }

}
