package com.codesquad.sidedish.init;

import com.codesquad.sidedish.category.domain.SidedishCategory;
import com.codesquad.sidedish.category.domain.SidedishCategoryRepository;
import com.codesquad.sidedish.category.domain.SidedishItem;
import com.codesquad.sidedish.category.exception.CategoryNotFoundException;
import com.codesquad.sidedish.event.domain.SidedishEvent;
import com.codesquad.sidedish.event.domain.SidedishEventRepository;
import com.codesquad.sidedish.image.domain.SidedishImage;
import com.codesquad.sidedish.image.domain.SidedishImageRepository;
import com.codesquad.sidedish.util.DefaultImageUtil;
import com.codesquad.sidedish.util.JwtUtil;
import com.codesquad.sidedish.util.SecretUtil;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class InitDataCommandLineRunner implements CommandLineRunner {

    private final SidedishCategoryRepository sidedishCategoryRepository;
    private final SidedishEventRepository eventRepository;
    private final SidedishImageRepository imageRepository;

    public InitDataCommandLineRunner(SidedishCategoryRepository sidedishCategoryRepository, SidedishEventRepository eventRepository, SidedishImageRepository imageRepository) {
        this.sidedishCategoryRepository = sidedishCategoryRepository;
        this.eventRepository = eventRepository;
        this.imageRepository = imageRepository;
    }

    @Override
    public void run(String... args) {
        SecretUtil.initServerSecretDto();
        JwtUtil.initServerSecretKey();
        DefaultImageUtil.initNotFoundImage(createSidedishImage(DefaultImageUtil.NOT_FOUND_IMAGE_URL));

        List<SidedishCategory> categoryList = new ArrayList<>();
        String[] prefixArr = {"메인요리", "국물요리", "반찬요리"};
        categoryList.add(sidedishCategoryRepository.findByCategoryName("main").orElseThrow(CategoryNotFoundException::new));
        categoryList.add(sidedishCategoryRepository.findByCategoryName("soup").orElseThrow(CategoryNotFoundException::new));
        categoryList.add(sidedishCategoryRepository.findByCategoryName("side").orElseThrow(CategoryNotFoundException::new));

        for (int i = 0; i < categoryList.size(); i++) {
            registerItems(categoryList.get(i), prefixArr[i]);
        }

        sidedishCategoryRepository.saveAll(categoryList);
    }

    private void registerItems(SidedishCategory category, String prefix) {
        List<SidedishItem> items = new ArrayList<>();
        String[] thumbnails = {
                "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg",
                "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0f95f44ea8e2e7930321def493753a48.jpg",
                "http://public.codesquad.kr/jk/storeapp/data/cad8eee316cf7151e07638aa57b32a9d.jpg"
        };

        String[][] detailImages = {
                {
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg"
                },
                {
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0f95f44ea8e2e7930321def493753a48.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg"
                },
                {
                        "http://public.codesquad.kr/jk/storeapp/data/cad8eee316cf7151e07638aa57b32a9d.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg",
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg"
                }
        };

        String[][] descriptionImages = {
                {
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg"
                },
                {
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg"
                },
                {
                        "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg"
                }
        };

        SidedishEvent event1 = createSidedishEvent("이벤트 특가", "#86C6FF", 30);
        SidedishEvent event2 = createSidedishEvent("할인 특가", "#82D32D", 10);
        SidedishEvent[][] events = {
                {
                        event1,
                        event2
                },
                {},
                {
                        event1
                }

        };

        items.add(createSidedishItem("[" + prefix + "] 규동 250g", "일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥", 5000, 4, 1));
        items.add(createSidedishItem("[" + prefix + "] 아삭 고소한 연근고기조림 250g", "매콤새콤달콤, 반찬으로도 안주로도 좋은", 6000, 2, 2));
        items.add(createSidedishItem("[" + prefix + "] 골뱅이무침 195g", "일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥", 6300, -1, 1));

        for (int i = 0; i < items.size(); i++) {
            SidedishItem sidedishItem = items.get(i);
            registerThumbnailImage(sidedishItem, thumbnails[i]);
            registerDetailImages(sidedishItem, detailImages[i]);
            registerDescriptionImages(sidedishItem, descriptionImages[i]);
            registerEvent(sidedishItem, events[i]);
            category.addSidedishItem(sidedishItem);
        }
    }

    private SidedishItem createSidedishItem(String name, String desc, int normalPrice, int quantity, int pointRate) {
        return new SidedishItem(name, desc, normalPrice, quantity, pointRate,
                "서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)",
                "2,500원 (40,000원 이상 구매 시 무료)");
    }

    private void registerThumbnailImage(SidedishItem item, String imageUrl) {
        SidedishImage image = createSidedishImage(imageUrl);
        item.addThumbnailImage(image);
    }

    private void registerDetailImages(SidedishItem item, String[] imageUrls) {
        for (String imageUrl : imageUrls) {
            SidedishImage image = createSidedishImage(imageUrl);
            item.addDetailImage(image);
        }
    }

    private void registerDescriptionImages(SidedishItem item, String[] imageUrls) {
        for (String imageUrl : imageUrls) {
            SidedishImage image = createSidedishImage(imageUrl);
            item.addDescriptionImage(image);
        }
    }

    private void registerEvent(SidedishItem item, SidedishEvent[] events) {
        for (SidedishEvent event : events) {
            item.addEvent(event);
        }
    }

    private SidedishEvent createSidedishEvent(String eventName, String eventColor, int eventSaleRate) {
        return eventRepository.save(new SidedishEvent(eventName, eventColor, eventSaleRate));
    }

    private SidedishImage createSidedishImage(String imageUrl) {
        return imageRepository.save(new SidedishImage(imageUrl));
    }
}
