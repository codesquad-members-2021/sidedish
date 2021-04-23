package com.codesquad.sidedish.domain;

import com.codesquad.sidedish.dto.CategoryDto;
import com.codesquad.sidedish.dto.ItemDto;
import org.springframework.data.annotation.Id;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public class Category {

    @Id
    private Long categoryId;

    private String name;
    private Set<Item> items = new HashSet<>();

    public Category(Long categoryId, String name, Set<Item> items) {
        this.categoryId = categoryId;
        this.name = name;
        this.items = items;
    }

    public void addItem(String detailHash, String image, String alt, List<String> deliveryType, String title, String description, Integer normalPrice,
                Integer salePrice, List<String> badge, String topImage, List<String> thumbImages, String productDescription, Integer point,
                String deliveryInfo, String deliveryFee, List<Integer> prices, List<String> detailSection, int stock) {

        System.out.println("======================================");
        System.out.println("Category.addItem");
        System.out.println("======================================");
        Item item = new Item(detailHash, image, alt, deliveryType, title, description, normalPrice, salePrice, badge, topImage, thumbImages, productDescription, point,
                deliveryInfo, deliveryFee, prices, detailSection, stock);

        items.add(item);
    }


    public static CategoryDto createCategoryDto(Category category) {
        Set<ItemDto> itemDtos = category.items.stream().map(item -> Item.createItemDto(item)).collect(Collectors.toSet());
        return new CategoryDto(category.categoryId, category.name, itemDtos);
    }

    public Item getItem(String hash) {
        return items.stream()
                .filter(item -> item.getDetailHash().equals(hash))
                .findFirst()
                .orElseThrow(IllegalArgumentException::new);
    }

    public void updateItemStock(Item updateItem) {
        items.stream()
                .filter(item -> item.getDetailHash().equals(updateItem.getDetailHash()))
                .findFirst()
                .map(item -> updateItem);
        //item.stock = updateItem.stock
    }

    public void setCategoryId(Long categoryId) {
        this.categoryId = categoryId;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setItems(Set<Item> items) {
        this.items = items;
    }
}
