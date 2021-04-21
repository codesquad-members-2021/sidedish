package com.example.dto.Category;

import com.example.domain.Category;
import com.example.domain.Item;
import com.example.dto.ItemInfoDto;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ResponseDTO {

    @JsonProperty("category_id")
    private final Long id;

    @JsonProperty("name")
    private final String name;

    @JsonProperty("items")
    private List<ItemInfoDto> items = new ArrayList<>();

    public ResponseDTO(Long id, String name, List<ItemInfoDto> items) {
        this.id = id;
        this.name = name;
        this.items = items;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public List<ItemInfoDto> getItems() {
        return items;
    }

    public static ResponseDTO of(Category category){
        List<Item> items = category.getItems();
        List<ItemInfoDto> itemInfoDtos = items.stream().map(ItemInfoDto::of).collect(Collectors.toList());

        return new ResponseDTO(category.getId(),category.getName(),itemInfoDtos);
    }
}
