package com.team10.banchan.service;

import com.team10.banchan.dto.ItemDetailResponse;
import com.team10.banchan.exception.NotFoundException;
import com.team10.banchan.model.Item;
import com.team10.banchan.repository.ItemRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ItemDetailService {

    private final ItemRepository itemRepository;

    public ItemDetailService(ItemRepository itemRepository) {
        this.itemRepository = itemRepository;
    }

    public ItemDetailResponse itemDetail(Long itemId) {
        Item item = itemRepository.findById(itemId).orElseThrow(() -> new NotFoundException("존재하지 않는 반찬입니다."));
        return ItemDetailResponse.of(itemId, item.itemDetail());
    }

    public List<ItemDetailResponse> itemDetails() {
        return itemRepository.findAll().stream()
                .map(item -> ItemDetailResponse.of(item.getId(), item.itemDetail()))
                .collect(Collectors.toList());
    }

}
