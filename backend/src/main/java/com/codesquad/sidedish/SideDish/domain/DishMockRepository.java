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
                .title("[미노리키친] 규동 250g")
                .description("일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥")
                .badges(Arrays.asList("이벤트특가", "메인특가"))
                .salePrice(5200)
                .price(6500)
                .point(52)
                .quantity(5)
                .deliveryFee(2500)
                .deliveryTypes(Arrays.asList("새벽배송", "전국택배"))
                .deliveryInfo("서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.")
                .image("http://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg")
                .thumbImages(Arrays.asList(
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg"))
                .detailImages(Arrays.asList(
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg"
                ))
                .build());

        dishes.put("HDF73", new Builder()
                .detailHash("HDF73")
                .categoryId(1) // 메인요리
                .title("[빅마마의밥친구] 아삭 고소한 연근고기조림 250g")
                .description("편식하는 아이도 좋아하는 건강한 연근조림")
                .price(5500)
                .point(55)
                .quantity(5)
                .deliveryFee(2500)
                .deliveryTypes(Arrays.asList("새벽배송", "전국택배"))
                .deliveryInfo("서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.")
                .image("http://public.codesquad.kr/jk/storeapp/data/7674311a02ba7c88675f3186ddaeef9e.jpg")
                .thumbImages(Arrays.asList(
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0f95f44ea8e2e7930321def493753a48.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg"))
                .detailImages(Arrays.asList(
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg"
                ))
                .build());

        dishes.put("HAA47", new Builder()
                .detailHash("HAA47")
                .categoryId(2) // 국. 찌개
                .title("[집밥의완성] 스키야키 1.5kg (2~3인분)")
                .description("진한 풍미의 일본식 전골, 스키야키")
                .badges(Arrays.asList("이벤트특가"))
                .salePrice(10000)
                .price(19800)
                .point(100)
                .quantity(5)
                .deliveryFee(2500)
                .deliveryTypes(Arrays.asList("새벽배송", "전국택배"))
                .deliveryInfo("서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.")
                .image("http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg")
                .thumbImages(Arrays.asList(
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/781fea32c56eb102429902a2f62cbaf3.jpg"))
                .detailImages(Arrays.asList(
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/edd7a54096d6df1b8bc8b318cea0191c.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/fb8e6e21faa8284021c1b1c7a1ae1281.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/36a0566d2fb69a4bcea946727181836d.jpg"
                ))
                .build());

        dishes.put("H26C7", new Builder()
                .detailHash("H26C7")
                .categoryId(2) // 국. 찌개
                .title("[모이세] 육개장 1팩(600g)")
                .description("제주3대해장국 맛집의 인기메뉴")
                .badges(Arrays.asList("론칭특가"))
                .salePrice(4400)
                .price(5500)
                .point(44)
                .quantity(5)
                .deliveryFee(2500)
                .deliveryTypes(Arrays.asList("새벽배송", "전국택배"))
                .deliveryInfo("서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.")
                .image("http://public.codesquad.kr/jk/storeapp/data/8fd330b5f5dbccbcbf4f5731e5e9e29b.jpg")
                .thumbImages(Arrays.asList(
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg"))
                .detailImages(Arrays.asList(
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg"
                ))
                .build());

        dishes.put("H602F", new Builder()
                .detailHash("H602F")
                .categoryId(3) // 반찬
                .title("[미노리키친] 일본식 우엉조림(킨피라고보) 80g")
                .description("한국식 우엉조림과는 다른 진한 감칠맛")
                .price(3300)
                .point(33)
                .quantity(5)
                .deliveryFee(2500)
                .deliveryTypes(Arrays.asList("새벽배송", "전국택배"))
                .deliveryInfo("서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.")
                .image("http://public.codesquad.kr/jk/storeapp/data/422befe07f7e2860b9a83a8d7049ec2e.jpg")
                .thumbImages(Arrays.asList(
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c8c8045696b4692107ef28c8b445ca42.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg"))
                .detailImages(Arrays.asList(
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg"
                ))
                .build());

        dishes.put("H0FC6", new Builder()
                .detailHash("H0FC6")
                .categoryId(3) // 반찬
                .title("[마더앤찬] 명란치즈계란말이 230g")
                .description("아이반찬으로 최고 계란말이")
                .badges(Arrays.asList("이벤트특가"))
                .salePrice(3870)
                .price(4300)
                .point(38)
                .quantity(5)
                .deliveryFee(2500)
                .deliveryTypes(Arrays.asList("새벽배송", "전국택배"))
                .deliveryInfo("서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.")
                .image("http://public.codesquad.kr/jk/storeapp/data/f6817349118d4c671da8dca9065649a9.jpg")
                .thumbImages(Arrays.asList(
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/43c38eeffa556554c9b06301eb3e85b2.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg"))
                .detailImages(Arrays.asList(
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/967e8e1ef357e9722b796e2bcb09ba3d.jpg"
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
