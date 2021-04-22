package com.codesquad.sidedish.controller;

import com.codesquad.sidedish.domain.Item;
import com.codesquad.sidedish.domain.Order;
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
    public Item getDetailItem(@PathVariable Long categor    yId, @PathVariable String hash) {//ItemDTO로 수정
        return categoryService.findItemByHash(categoryId, hash);
    }

    @PostMapping
    public String order(@PathVariable Long categoryId, @PathVariable String hash, Order order) {
        categoryService.order(categoryId, hash, order);
    }
}
