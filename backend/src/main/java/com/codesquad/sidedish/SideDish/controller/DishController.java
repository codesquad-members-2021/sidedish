package com.codesquad.sidedish.SideDish.controller;

import com.codesquad.sidedish.SideDish.dto.CategoryDto;
import com.codesquad.sidedish.SideDish.dto.DishDto;
import com.codesquad.sidedish.SideDish.service.CategoryService;
import com.codesquad.sidedish.SideDish.service.DishService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Api(tags = {"Side Dish API"}, description = "Bat 와 Pyro 가 야근하며 만든 API")
@RestController
public class DishController {
    private final CategoryService categoryService;
    private final DishService dishService;

    DishController(CategoryService categoryService, DishService dishService) {
        this.categoryService = categoryService;
        this.dishService = dishService;
    }

    @GetMapping("/categories")
    @ApiOperation(value = "카테고리", notes = "요리 카테고리 목록을 반환합니다.")
    public ResponseEntity<List<CategoryDto>> getCategories() {
        List<CategoryDto> categories = categoryService.getList();
        return ResponseEntity.ok().body(categories);
    }

    //    @GetMapping("/detail/{detailHash}")
//    @ApiOperation(value = "요리 상세", notes = "요리의 상세 정보를 반환합니다.")
//    public ResponseEntity<DishDetailDto> getDetail(@ApiParam("요리의 식별자") @PathVariable("detailHash") String detailHash) {
//        DishDetailDto dishDetailDto = dishService.getDetail(detailHash);
//        return ResponseEntity.ok().body(dishDetailDto);
//    }
//
//    @GetMapping("/detail/{detailHash}/refreshable")
//    @ApiOperation(value = "요리 상세 갱신", notes = "요리의 상세 정보를 갱신할 필요가 있는지 여부를 반환합니다.")
//    public ResponseEntity<RefreshDto> getDetailRefreshable(@ApiParam("요리의 식별자") @PathVariable("detailHash") String detailHash, @ApiParam("프론트에서 마지막으로 업데이트 한 날짜. 데이터 형식: yyMMddhhmm") @RequestParam("lastUpdated") int lastUpdated) {
//        RefreshDto refreshDto = dishService.getDetailRefreshable(detailHash, lastUpdated);
//        return ResponseEntity.ok().body(refreshDto);
//    }
//
//    @GetMapping("/detail/{detailHash}/quantity")
//    @ApiOperation(value = "요리 수량", notes = "요리의 주문 가능한 수량을 반환합니다.")
//    public ResponseEntity<QuantityDto> getDetailQuantity(@ApiParam("요리의 식별자") @PathVariable("detailHash") String detailHash) {
//        QuantityDto quantityDto = dishService.getDetailQuantity(detailHash);
//        return ResponseEntity.ok().body(quantityDto);
//    }
//
    @GetMapping("/main")
    @ApiOperation(value = "메인 요리", notes = "메인 요리의 목록을 반환합니다.")
    public ResponseEntity<List<DishDto>> getMainList() {
        List<DishDto> dishes = dishService.getList(1L);
        return ResponseEntity.ok().body(dishes);
    }

    @GetMapping("/soup")
    @ApiOperation(value = "국물 요리", notes = "국물 요리의 목록을 반환합니다.")
    public ResponseEntity<List<DishDto>> getSoupList() {
        List<DishDto> dishes = dishService.getList(2L);
        return ResponseEntity.ok().body(dishes);
    }

    @GetMapping("/side")
    @ApiOperation(value = "반찬 요리", notes = "반찬 요리의 목록을 반환합니다.")
    public ResponseEntity<List<DishDto>> getSideList() {
        List<DishDto> dishes = dishService.getList(3L);
        return ResponseEntity.ok().body(dishes);
    }
}
