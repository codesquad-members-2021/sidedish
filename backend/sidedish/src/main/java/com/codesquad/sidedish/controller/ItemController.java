package com.codesquad.sidedish.controller;

import com.codesquad.sidedish.domain.Item;
import com.codesquad.sidedish.service.CategoryService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/detail/{categoryId}/{hash}")//카테고리 아이디
public class ItemController {

    private final CategoryService categoryService;

    public ItemController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @GetMapping
    public Item getDetailItem(@PathVariable Long categoryId, @PathVariable String hash) {//ItemDTO로 수정
        return categoryService.findItemByHash(categoryId, hash);
    }
}
