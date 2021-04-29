package com.codesquad.sidedish.controller;

import com.codesquad.sidedish.dto.DetailItemDto;
import com.codesquad.sidedish.service.CategoryService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/detail/{categoryId}/{hash}")
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
    public DetailItemDto order(@PathVariable Long categoryId, @PathVariable String hash, int orderCount) {
        categoryService.order(categoryId, hash, orderCount);

        return getDetailItem(categoryId, hash);
    }

}
