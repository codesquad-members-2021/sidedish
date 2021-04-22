package com.codesquad.sidedish.category.controller;

import com.codesquad.sidedish.category.domain.dto.SidedishItemDetailListDTO;
import com.codesquad.sidedish.category.domain.dto.SidedishItemPreviewDTO;
import com.codesquad.sidedish.category.domain.dto.SidedishItemPreviewListDTO;
import com.codesquad.sidedish.category.service.SidedishItemService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class SidedishCategoryController {

    private final SidedishItemService itemService;

    public SidedishCategoryController(SidedishItemService itemService) {
        this.itemService = itemService;
    }

    @GetMapping("/{category}")
    public ResponseEntity<SidedishItemPreviewListDTO> previewDish(@PathVariable String category) {
        List<SidedishItemPreviewDTO> previewDTOs = itemService.showItemList(category);
        SidedishItemPreviewListDTO previewListDTO = new SidedishItemPreviewListDTO(previewDTOs);
        return new ResponseEntity(previewListDTO, HttpStatus.OK);
    }

    @GetMapping("/{category}/{id}")
    public ResponseEntity<SidedishItemDetailDTO> previewDish(@PathVariable String category, @PathVariable Long id) {
        SidedishItemDetailDTO detailDTOs = itemService.showItem(category, id);
        SidedishItemDetailListDTO detailListDTO =new SidedishItemDetailListDTO(detailDTOs);
        return new ResponseEntity(detailListDTO, HttpStatus.OK);
    }

}
