package com.example.controller;

import com.example.domain.Category;
import com.example.dto.Category.ResponseDTO;
import com.example.dto.Detail.RequestHashDto;
import com.example.dto.Food.ItemDto;
import com.example.dto.SideDishInfoDto;
import com.example.service.CategoryService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class ApiCategoryController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    private final CategoryService categoryService;

    public ApiCategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @PostMapping("main")
    public void addMainItems(@RequestBody List<ItemDto> itemDtoList) {
        Category category = categoryService.findById(1L);
        categoryService.insertItem(category, itemDtoList);
    }

    @PostMapping("soup")
    public void addSoupItems(@RequestBody List<ItemDto> itemDtoList) {
        Category category = categoryService.findById(2L);
        categoryService.insertItem(category, itemDtoList);
    }

    @PostMapping("side")
    public void addSideItems(@RequestBody List<ItemDto> itemDtoList) {
        Category category = categoryService.findById(3L);
        categoryService.insertItem(category, itemDtoList);
    }

    @PostMapping("detail")
    public void addDetail(@RequestBody List<RequestHashDto> requestList) {
        for (Long i = 1L; i < 4L; i++) {
            Category category = categoryService.findById(i);
            categoryService.insertDetailOfItem(requestList, category);
        }
    }

    @GetMapping("main")
    public ResponseEntity<ResponseDTO> getMainFoodList() {
        logger.debug("main 푸드 리스트를 출력합니다.");
        return ResponseEntity.ok().body(categoryService.responseDtoFindById(1L));
    }

    @GetMapping("main/{detailHash}")
    public ResponseEntity<SideDishInfoDto> getMainFood(@PathVariable String detailHash) {
        return ResponseEntity.ok().body(SideDishInfoDto.of(categoryService.findById(1L).getItems().get(detailHash)));
    }

    @GetMapping("soup")
    public ResponseEntity<ResponseDTO> getSoupList() {
        logger.debug("soup 푸드 리스트를 출력합니다.");
        return ResponseEntity.ok().body(categoryService.responseDtoFindById(2L));
    }

    @GetMapping("soup/{detailHash}")
    public ResponseEntity<SideDishInfoDto> getSoupFood(@PathVariable String detailHash) {
        return ResponseEntity.ok().body(SideDishInfoDto.of(categoryService.findById(2L).getItems().get(detailHash)));
    }

    @GetMapping("side")
    public ResponseEntity<ResponseDTO> getSideList() {
        logger.debug("Side 푸드 리스트를 출력합니다.");
        return ResponseEntity.ok().body(categoryService.responseDtoFindById(3L));
    }

    @GetMapping("side/{detailHash}")
    public ResponseEntity<SideDishInfoDto> getSideFood(@PathVariable String detailHash) {
        return ResponseEntity.ok().body(SideDishInfoDto.of(categoryService.findById(3L).getItems().get(detailHash)));
    }

}
