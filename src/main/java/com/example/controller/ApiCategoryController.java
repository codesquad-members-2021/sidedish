package com.example.controller;

import com.example.domain.Category;
import com.example.domain.Item;
import com.example.dto.Category.ResponseDTO;
import com.example.dto.Detail.RequestHashDto;
import com.example.dto.Food.ItemDto;
import com.example.service.CategoryService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Stack;

@RestController
public class ApiCategoryController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    private final CategoryService categoryService;

    private static String convertArrayToString(String[] arr) {
        if (arr == null) {
            return "";
        }

        String detail = Arrays.toString(arr);
        return detail.substring(1, detail.length() - 1);
    }

    public static int convertStrPriceToInt(String str) {
        if (str.contains("원")) {
            str = str.replaceAll("원", "");
        }
        if (str.contains(",")) {
            str = str.replaceAll(",", "");
        }

        return Integer.parseInt(str);
    }

    public ApiCategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @PostMapping("main")
    public void addMainItems(@RequestBody List<ItemDto> itemDtoList) {
        Category category = Category.of("든든한반찬");
        for (ItemDto itemDto : itemDtoList) {
            category.addItem(Item.of(itemDto.getDetail_hash(),
                    itemDto.getTitle(),
                    itemDto.getDescription(),
                    convertStrPriceToInt(itemDto.getS_price()),  //INFO. n_price, s_price 두개가 있는데, api 문서에 s_price만 있을 경우가 있어서 s_price를 넣었음.
                    convertArrayToString(itemDto.getBadge()),
                    convertArrayToString(itemDto.getDelivery_type()),
                    "", // Detail에서 업데이트 됨
                    10,
                    ""
            ));
        }
        categoryService.save(category);
    }

    @PostMapping("main/detail")
    public void addDetails(@RequestBody List<RequestHashDto> requestList) {
        Category category = categoryService.findById(1L);
        Stack<Item> stackOfItem = new Stack<>();
        for (Item item : category.getItems()) {
            stackOfItem.push(item);
        }
        List<Item> newItemList = new ArrayList<>();

        while (!stackOfItem.isEmpty()) {
            Item item = stackOfItem.pop();
            for (RequestHashDto dto : requestList) {
                String UpdateItemId = dto.hash;

                if (item.getId().equals(UpdateItemId)) {

                    newItemList.add(Item.of(dto.hash,
                            item.getTitle(),
                            item.getDescription(),
                            item.getPrice(),
                            item.getBadges(),
                            item.getDeliveryTypes(),
                            convertArrayToString(dto.data.thumb_images),
                            item.getStock(),
                            convertArrayToString(dto.data.getDetail_section())
                    ));
                }
            }

        }
        category.update(newItemList);
        categoryService.save(category);

    }

    @PostMapping("soup")
    public List<ItemDto> addSoupItems(@RequestBody List<ItemDto> itemDto) {
        return itemDto;
    }

    @PostMapping("side")
    public List<ItemDto> addSideItems(@RequestBody List<ItemDto> itemDto) {
        return itemDto;
    }


    @GetMapping("main")
    public ResponseEntity<List<ResponseDTO>> getBestFoodList() {
        logger.debug("main 푸드 리스트를 출력합니다.");
        return ResponseEntity.ok().body(categoryService.findAll());
    }

    @GetMapping("best/{detailHash}")
    public ResponseEntity getBestFoodOfCategory(@PathVariable Long detailHash) {
        logger.debug("{} 카테고리의 main 푸드 리스트를 출력합니다.", detailHash);
        return ResponseEntity.ok().body(categoryService.responseDtoFindById(detailHash));
    }
}
