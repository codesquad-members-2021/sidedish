package com.codesquad.team14.domain;

import com.codesquad.team14.dto.item.ItemDto;
import org.springframework.data.annotation.Id;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class Category {

    @Id
    private Long id;

    private String name;

    private boolean isBest;

    private final Set<Item> items = new HashSet<>();

    public Category(String name) {
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public boolean isBest() {
        return isBest;
    }

    public Set<Item> getItems() {
        return items;
    }

    public List<ItemDto> getItemDtoList() {
        List<ItemDto> itemDtoList = new ArrayList<>();
        for (Item item : items) {
            itemDtoList.add(ItemDto.from(item));
        }

        return itemDtoList;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setBest() {
        isBest = !isBest;
    }

    public void addItem(Item item) {
        items.add(item);
    }
}
