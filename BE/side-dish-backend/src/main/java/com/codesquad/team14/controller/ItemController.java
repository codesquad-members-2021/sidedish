package com.codesquad.team14.controller;

import com.codesquad.team14.domain.Item;
import com.codesquad.team14.repository.ItemRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ItemController {

    private final ItemRepository itemRepository;


    public ItemController(ItemRepository itemRepository) {
        this.itemRepository = itemRepository;
    }

    @GetMapping("/main")
    public List<Item> allFromMain() {
        return itemRepository.findAllItemsByCategory(1L);
    }

    @GetMapping("/main/{itemId}")
    public Item singleItem(@PathVariable Long itemId) {
        return itemRepository.findById(itemId).get();
    }
}
