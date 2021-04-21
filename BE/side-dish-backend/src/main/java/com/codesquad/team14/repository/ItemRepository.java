package com.codesquad.team14.repository;

import com.codesquad.team14.domain.Item;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.stream.Collectors;

@Component
public class ItemRepository {
    private final Map<Long, Item> items = new ConcurrentHashMap<Long, Item>() {{
        Item item1 = new Item(1L, "[미노리키친] 규동 250g", "일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥", 6500, 1L);
        Item item2 = new Item(2L, "[빅마마의밥친구] 아삭 고소한 연근고기조림 250g", "편식하는 아이도 좋아하는 건강한 연근조림", 5500, 1L);
        put(1L, item1);
        put(2L, item2);
    }};

    public List<Item> findAllItemsByCategory(Long categoryId) {
        return items.values().stream()
                .filter(item -> item.getCategoryId().equals(categoryId))
                .collect(Collectors.toList());
    }

    public Item findById(Long id) {
        return items.get(id);
    }
}
