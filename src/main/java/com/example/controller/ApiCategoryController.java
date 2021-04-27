package com.example.controller;

import com.example.domain.Category;
import com.example.domain.Item;
import com.example.dto.Category.ResponseDTO;
import com.example.dto.Detail.RequestHashDto;
import com.example.dto.Food.ItemDto;
import com.example.dto.SideDishInfoDto;
import com.example.service.CategoryService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

@RestController
public class ApiCategoryController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    private final CategoryService categoryService;

    public ApiCategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    private static String convertArrayToString(String[] arr) {
        if (arr == null) {
            return "";
        }

        String detail = Arrays.toString(arr);
        return detail.substring(1, detail.length() - 1);
    }

    private static int convertStrPriceToInt(String str) {
        if (str.contains("원")) {
            str = str.replaceAll("원", "");
        }
        if (str.contains(",")) {
            str = str.replaceAll(",", "");
        }

        return Integer.parseInt(str);
    }

    //INFO 더미 데이터 추가
    @PostMapping("main")
    public void addMainItems(@RequestBody List<ItemDto> itemDtoList) {
        Category category = categoryService.findById(1L);
        insertItem(category,itemDtoList);
    }

    @PostMapping("soup")
    public void addSoupItems(@RequestBody List<ItemDto> itemDtoList) {
        Category category = categoryService.findById(2L);
        insertItem(category,itemDtoList);
    }

    @PostMapping("side")
    public void addSideItems(@RequestBody List<ItemDto> itemDtoList) {
        Category category = categoryService.findById(3L);
        insertItem(category,itemDtoList);
    }

    @PostMapping("detail")
    public void addDetail(@RequestBody List<RequestHashDto> requestList) {
        for(Long i=1L ; i<4L; i++) {
            Category category = categoryService.findById(i);
            insertDetailOfItem(requestList, category);
        }
    }

    private void insertItem(Category category, List<ItemDto> itemDtoList){
        for (ItemDto itemDto : itemDtoList) {
            category.addItem(Item.of(itemDto.getDetail_hash(),
                    itemDto.getTitle(),
                    itemDto.getDescription(),
                    convertStrPriceToInt(itemDto.getS_price()),  //INFO n_price, s_price 두개가 있는데, api 문서에 s_price만 있을 경우가 있어서 s_price를 넣었음.
                    convertArrayToString(itemDto.getBadge()),
                    convertArrayToString(itemDto.getDelivery_type()),
                    "", // Detail에서 업데이트 됨
                    10,
                    ""
            ));
        }
        categoryService.save(category);
    }

    private void insertDetailOfItem(List<RequestHashDto> requestList, Category category) {
        for (RequestHashDto dto : requestList) {
            Item findItem = category.getItems().get(dto.hash);

            if(findItem == null){
                continue;
            }

            if(findItem.getId().equals(dto.hash)) {  //m 아이템의 hash가 일치할 때 업데이트
                category.update(Item.of(dto.hash,
                        findItem.getTitle(),
                        findItem.getDescription(),
                        findItem.getPrice(),
                        findItem.getBadges(),
                        findItem.getDeliveryTypes(),
                        convertArrayToString(dto.data.thumb_images),
                        findItem.getStock(),
                        convertArrayToString(dto.data.getDetail_section())
                ));
            }
        }

        categoryService.save(category);
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
