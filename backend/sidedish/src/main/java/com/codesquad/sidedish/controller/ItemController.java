package com.codesquad.sidedish.controller;

import com.codesquad.sidedish.domain.Item;
import com.codesquad.sidedish.domain.Order;
import com.codesquad.sidedish.dto.DetailItemDto;
import com.codesquad.sidedish.service.CategoryService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/detail/{categoryId}/{hash}")//카테고리 아이디
public class ItemController {

    private final CategoryService categoryService;

    public ItemController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @GetMapping
    public DetailItemDto getDetailItem(@PathVariable Long categoryId, @PathVariable String hash) {//ItemDTO로 수정
        return categoryService.findDetailItemDtoByHash(categoryId, hash);
    }

    @PostMapping
    public String order(@PathVariable Long categoryId, @PathVariable String hash, Order order) {
        categoryService.order(categoryId, hash, order);
        return null;
    }

}
