package com.codesquad.team14.service;

import com.codesquad.team14.domain.Item;
import com.codesquad.team14.repository.ItemRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ItemService {

    private final ItemRepository itemRepository;

    public ItemService(ItemRepository itemRepository) {
        this.itemRepository = itemRepository;
    }

    public Item readDetailedItem(String category, Long itemId) {
        return itemRepository.findById(itemId).orElseThrow(() -> new IllegalArgumentException("해당하는 품목이 존재하지 않습니다"));
    }

    public List<Item> readAllByCategory(String category) {
        return itemRepository.findByCategory(category);
    }
}
