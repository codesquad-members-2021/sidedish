package com.team15.sidedish.service;

import com.team15.sidedish.domain.ItemRepository;
import com.team15.sidedish.dto.ItemDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ItemService {
    private final ItemRepository itemRepository;

    public ItemService(ItemRepository itemRepository) {
        this.itemRepository = itemRepository;
    }

    public List<ItemDTO> showDishes() {
        return itemRepository.findAll();
    }

    public ItemDTO showSingleDish(String hash) {
        return itemRepository.findById(hash).orElseThrow(IllegalArgumentException::new);
    }

    public List<ItemDTO> showDishsBySection(String section) {
        return itemRepository.findAllBySection(section);
    }
}
