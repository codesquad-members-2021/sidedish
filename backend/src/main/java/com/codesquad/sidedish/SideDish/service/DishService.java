package com.codesquad.sidedish.SideDish.service;

import com.codesquad.sidedish.SideDish.dto.DishDetailDto;
import com.codesquad.sidedish.SideDish.dto.DishDto;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class DishService {

    private List<String> detailImages;
    private List<String> thumbImages;
    private String productDescription;
    private String point;
    private String deliveryInfo;
    private String deliveryFee;
    private List<String> prices;
    private List<String> detailSection;

    public DishDetailDto getDetail(String hash) {
        DishDetailDto.Builder builder = new DishDetailDto.Builder();
        builder.topImage("topImage")
                .thumbImages(Arrays.asList("thumb1", "thumb2"))
                .productDescription("product is awesome")
                .point(25)
                .deliveryInfo("서울 코드스쿼드")
                .deliveryFee("2500원")
                .prices(Arrays.asList("1800원", "이게 왜 array 지?"))
                .detailSection(Arrays.asList("detail1", "detail2"));
        return builder.build();
    }

    public List<DishDto> getList(long categoryId) {
        List<DishDto> dishes = new ArrayList<>();
        return dishes;
    }
}
