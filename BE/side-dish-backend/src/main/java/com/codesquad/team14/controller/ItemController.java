package com.codesquad.team14.controller;

import com.codesquad.team14.domain.Item;
import com.codesquad.team14.service.ItemService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ItemController {

    private final ItemService itemService;

    public ItemController(ItemService itemService) {
        this.itemService = itemService;
    }

    @GetMapping("/{category}")
    public List<Item> itemList(@PathVariable String category) {
        return itemService.readAllByCategory(category);
    }

    @GetMapping("/{category}/{itemId}")
    public Item detailedItem(@PathVariable String category, @PathVariable Long itemId) {
        return itemService.readDetailedItem(category, itemId);
    }
}
