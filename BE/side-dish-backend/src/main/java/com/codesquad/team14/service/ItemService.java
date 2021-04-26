package com.codesquad.team14.service;

import com.codesquad.team14.domain.Item;
import com.codesquad.team14.dto.DetailedItemDto;
import com.codesquad.team14.dto.ItemDto;
import com.codesquad.team14.exception.ElementNotFoundException;
import com.codesquad.team14.repository.ItemRepository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ItemService {

    private static final String[] CATEGORIES = {"MAIN", "SOUP", "SIDE"};

    private final ItemRepository itemRepository;

    public ItemService(ItemRepository itemRepository) {
        this.itemRepository = itemRepository;
    }

    public DetailedItemDto readDetailedItem(String category, Long itemId) {
        Item item = itemRepository.findById(itemId).orElseThrow(ElementNotFoundException::new);
        return DetailedItemDto.from(item);
    }

    public List<ItemDto> readAllByCategory(String category) {
        validateCategory(category);

        List<Item> itemList = itemRepository.findByCategory(category);
        List<ItemDto> itemDtoList = new ArrayList<>();

        for (Item item : itemList) {
            itemDtoList.add(ItemDto.from(item));
        }

        return itemDtoList;
    }

    private void validateCategory(String categoryFromUser) {
        for (String category : CATEGORIES) {
            if (category.equals(categoryFromUser)) {
                return;
            }
        }

        throw new ElementNotFoundException();
    }
}
