package com.codesquad.sidedish.category.controller;

import com.codesquad.sidedish.category.domain.dto.DetailItemDTO;
import com.codesquad.sidedish.category.domain.dto.PreviewListDTO;
import com.codesquad.sidedish.category.service.SidedishItemService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SidedishCategoryController {

    private final SidedishItemService itemService;

    public SidedishCategoryController(SidedishItemService itemService) {
        this.itemService = itemService;
    }

    @GetMapping("/{category}")
    public ResponseEntity<PreviewListDTO> previewItemList(@PathVariable String category) {
        PreviewListDTO previewListDTO = itemService.showItemList(category);
        return new ResponseEntity<>(previewListDTO, HttpStatus.OK);
    }

    @GetMapping("/{category}/{id}")
    public ResponseEntity<DetailItemDTO> detailItem(@PathVariable String category, @PathVariable Long id) {
        DetailItemDTO detailDTO = itemService.showItem(category, id);
        return new ResponseEntity<>(detailDTO, HttpStatus.OK);
    }
}
