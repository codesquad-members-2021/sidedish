package com.team10.banchan.controller;

import com.team10.banchan.dto.ItemDetailResponse;
import com.team10.banchan.response.ResponseBody;
import com.team10.banchan.service.ItemDetailService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/detail")
public class ItemDetailController {

    private final ItemDetailService itemDetailService;

    public ItemDetailController(ItemDetailService itemDetailService) {
        this.itemDetailService = itemDetailService;
    }

    @GetMapping("/{itemId}")
    public ItemDetailResponse itemDetail(@PathVariable Long itemId) {
        return itemDetailService.itemDetail(itemId);
    }

    @GetMapping
    public ResponseBody<List<ItemDetailResponse>> itemDetails() {
        return ResponseBody.ok(itemDetailService.itemDetails());
    }
}
