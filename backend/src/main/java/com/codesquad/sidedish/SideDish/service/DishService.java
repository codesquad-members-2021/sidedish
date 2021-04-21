package com.codesquad.sidedish.SideDish.service;

import com.codesquad.sidedish.SideDish.dto.*;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Service
public class DishService {

    public RefreshDto getDetailRefreshable(String hash, long lastUpdated) {
        return new RefreshDto(false);
    }

    public QuantityDto getDetailQuantity(String hash) {
        return new QuantityDto(5);
    }

    public DishDetailDto getDetail(String hash) {
        DishDetailDataDto.Builder builder = new DishDetailDataDto.Builder();
        DishDetailDataDto data = builder.topImage("topImage")
                .thumbImages(Arrays.asList("thumb1", "thumb2"))
                .productDescription("product is awesome")
                .point(25)
                .deliveryInfo("서울 코드스쿼드")
                .deliveryFee("2500원")
                .prices(Arrays.asList("1800원", "이게 왜 array 지?"))
                .detailSection(Arrays.asList("detail1", "detail2"))
                .build();
        return new DishDetailDto("HF90", data);
    }

    public List<DishDto> getList(long categoryId) {
        DishDto.Builder builder = new DishDto.Builder()
                .detailHash("HF93")
                .image("image url")
                .deliveryType(Arrays.asList("새벽배송", "주말배송"))
                .title("상품이름")
                .description("배가 고픈 상품")
                .nPrice(5000)
                .sPrice("우리가 계산을 해야할 돈")
                .badge(Arrays.asList("이벤트할인", "그냥 할인"));
        List<DishDto> dishes = Arrays.asList(
                builder.build(),
                builder.build(),
                builder.build()
        );
        return dishes;
    }
}
