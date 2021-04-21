package com.codesquad.sidedish.SideDish.domain;

import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import static com.codesquad.sidedish.SideDish.domain.Dish.Builder;

public class DishMockRepository implements DishRepository {
    Map<String, Dish> dishes = new LinkedHashMap<>();

    public DishMockRepository() {
        dishes.put("HBDEF", new Builder()
                .detailHash("HBDEF")
                .categoryId(1) // 메인요리
                .title("[윤식당] 불고기 with Rice")
                .description("윤식당 불고기메뉴의 가장 기본인 불고기라이스! (마더소스 포함)")
                .badges(Arrays.asList("이벤트특가", "메인특가"))
                .salePrice(31200)
                .price(39000)
                .point(312)
                .quantity(5)
                .deliveryFee(2500)
                .deliveryTypes(Arrays.asList("새벽배송", "전국택배"))
                .deliveryInfo("서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.")
                .image("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.10000recipe.com%2Frecipe%2F6907615&psig=AOvVaw1AxHy5c8fBj1PhjR7CKark&ust=1619131482191000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKjBjvm0kPACFQAAAAAdAAAAABAI")
                .thumbImages(Arrays.asList(
                        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.10000recipe.com%2Frecipe%2F6863296&psig=AOvVaw1AxHy5c8fBj1PhjR7CKark&ust=1619131482191000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKjBjvm0kPACFQAAAAAdAAAAABAN",
                        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fmeatboxbc.com%2Fproducts%2Fkorean-stylebeef-bulgogi&psig=AOvVaw1AxHy5c8fBj1PhjR7CKark&ust=1619131482191000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKjBjvm0kPACFQAAAAAdAAAAABAS"))
                .detailImages(Arrays.asList(
                        "https://www.google.com/url?sa=i&url=http%3A%2F%2Fwww.62life.com%2Fm%2Fgoods%2Fitem_detail_m.asp%3Fodtype%3D11%26odtype2%3D01%26gdtype%3D71%26gdcd%3D7110000741%26divcd%3D30&psig=AOvVaw1AxHy5c8fBj1PhjR7CKark&ust=1619131482191000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKjBjvm0kPACFQAAAAAdAAAAABAX",
                        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.homestaurant.co.kr%2Fgoods%2Fgoods_view.php%3FgoodsNo%3D1000000392&psig=AOvVaw1AxHy5c8fBj1PhjR7CKark&ust=1619131482191000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKjBjvm0kPACFQAAAAAdAAAAABAi"
                ))
                .build());

        // TODO: main(메인) 2개, soup(국) 2개, side(반찬) 2개 예시 하드코딩으로 채워넣기
        dishes.put("", new Builder()
                .build());
    }

    @Override
    public List<Dish> findAllByCategoryId(long categoryId) {
        return dishes.values().stream()
                .filter(dish -> dish.getCategoryId() == categoryId)
                .collect(Collectors.toList());
    }

    @Override
    public Dish findByDetailHash(String detailHash) {
        return dishes.get(detailHash);
    }
}
