package com.codesquad.sidedish.category.controller;

import com.codesquad.sidedish.category.domain.dto.DetailItemDtoWrapper;
import com.codesquad.sidedish.category.domain.dto.OrderDTO;
import com.codesquad.sidedish.category.domain.dto.PreviewListDtoWrapper;
import com.codesquad.sidedish.category.service.SidedishItemService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@RestController
public class SidedishCategoryController {

    private final SidedishItemService itemService;

    public SidedishCategoryController(SidedishItemService itemService) {
        this.itemService = itemService;
    }

    @GetMapping("/{category}")
    public ResponseEntity<PreviewListDtoWrapper> previewItemList(@PathVariable String category) {
        PreviewListDtoWrapper previewListDtoWrapper = itemService.showItemList(category);
        return new ResponseEntity<>(previewListDtoWrapper, HttpStatus.OK);
    }

    @GetMapping("/{category}/{id}")
    public ResponseEntity<DetailItemDtoWrapper> detailItem(@PathVariable String category, @PathVariable Long id) {
        DetailItemDtoWrapper detailDTO = itemService.showItem(category, id);
        return new ResponseEntity<>(detailDTO, HttpStatus.OK);
    }

    @PostMapping("/{category}/{id}")
    public void orderItem(@PathVariable String category, @PathVariable Long id, @RequestBody OrderDTO orderDTO) {
        itemService.order(category, id, orderDTO);
    }
}
