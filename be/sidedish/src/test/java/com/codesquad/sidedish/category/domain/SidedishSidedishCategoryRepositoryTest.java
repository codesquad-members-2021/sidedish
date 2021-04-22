package com.codesquad.sidedish.category.domain;

import com.codesquad.sidedish.category.service.SidedishItemService;
import com.codesquad.sidedish.event.domain.SidedishEvent;
import com.codesquad.sidedish.event.domain.SidedishEventRepository;
import com.codesquad.sidedish.image.domain.SidedishImage;
import com.codesquad.sidedish.image.domain.SidedishImageRepository;
import com.codesquad.sidedish.image.domain.SidedishImageTypeEnum;
import com.codesquad.sidedish.image.domain.SidedishItemImage;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;


@SpringBootTest
@Transactional
class SidedishSidedishCategoryRepositoryTest {

    @Autowired
    SidedishCategoryRepository sidedishCategoryRepository;

    @Autowired
    SidedishEventRepository eventRepository;

    @Autowired
    SidedishItemService itemService;

    @Autowired
    SidedishImageRepository imageRepository;


    Logger logger = LoggerFactory.getLogger(SidedishSidedishCategoryRepositoryTest.class);

    @Test
    @DisplayName("카테고리를 생성할 수 있어야 함")
    void createCategory() {
        SidedishCategory sidedishCategory = new SidedishCategory("메인요리");
        sidedishCategoryRepository.save(sidedishCategory);

        Iterable<SidedishCategory> categories = sidedishCategoryRepository.findAll();

        for (SidedishCategory currentSidedishCategory : categories) {
            logger.info("category : {}", currentSidedishCategory);
        }
    }

    @Test
    @DisplayName("아이템을 생성할 수 있어야 함")
    void createItem() {
        SidedishCategory sidedishCategory = new SidedishCategory("메인요리");

        SidedishEvent event = createSidedishEvent("점심 특가", "#ffffff");

        SidedishItem sidedishItem1 = createSidedishItem("맛있는 반찬");
        SidedishItem sidedishItem2 = createSidedishItem("상큼한 반찬");

        sidedishItem1.addEvent(event);
        sidedishItem2.addEvent(event);

        sidedishCategory.addSidedishItem(sidedishItem1);
        sidedishCategory.addSidedishItem(sidedishItem2);

        sidedishCategoryRepository.save(sidedishCategory);

        Iterable<SidedishCategory> categories = sidedishCategoryRepository.findAll();

        for (SidedishCategory currentSidedishCategory : categories) {
            logger.info("category : {}", currentSidedishCategory);
            List<SidedishItem> sidedishItemList = currentSidedishCategory.getSidedishItemList();
            sidedishItemList.forEach(System.out::println);
        }
    }

    @Test
    @DisplayName("아이템 DTO를 생성")
    void createItemDTO() {

        SidedishCategory mainCategory = sidedishCategoryRepository.findByCategoryName("main");
        SidedishEvent event = createSidedishEvent("점심 특가", "#ffffff");

        SidedishItem sidedishItem1 = createSidedishItem("맛있는 반찬");
        SidedishItem sidedishItem2 = createSidedishItem("상큼한 반찬");

        sidedishItem1.addEvent(event);
        sidedishItem2.addEvent(event);

        mainCategory.addSidedishItem(sidedishItem1);
        mainCategory.addSidedishItem(sidedishItem2);

        sidedishCategoryRepository.save(mainCategory);

        List<SidedishItemDTO> itemDTOS = itemService.showItemList("main");


        for (SidedishItemDTO sidedishItemDTO : itemDTOS) {
            logger.info("ItemDTO : {}", sidedishItemDTO.toString());
        }
    }

    @Test
    @DisplayName("아이템 안에 이미지 목록을 생성")
    void createImages() {

        SidedishCategory mainCategory = sidedishCategoryRepository.findByCategoryName("main");
        SidedishItem sidedishItem = createSidedishItem("맛있는 반찬");
        mainCategory.addSidedishItem(sidedishItem);
        sidedishCategoryRepository.save(mainCategory);

        sidedishItem.addImage(createSidedishImage("thumb.jpg", SidedishImageTypeEnum.THUMBNAIL));
        sidedishItem.addImage(createSidedishImage("detail1.jpg", SidedishImageTypeEnum.DETAIL));
        sidedishItem.addImage(createSidedishImage("detail2.jpg", SidedishImageTypeEnum.DETAIL));
        sidedishItem.addImage(createSidedishImage("desc1.jpg", SidedishImageTypeEnum.DESCRIPTION));
        sidedishItem.addImage(createSidedishImage("desc2.jpg", SidedishImageTypeEnum.DESCRIPTION));
        sidedishItem.addImage(createSidedishImage("desc3.jpg", SidedishImageTypeEnum.DESCRIPTION));

        sidedishCategoryRepository.save(mainCategory);

        for (SidedishItem item : mainCategory.getSidedishItemList()) {
            Iterable<SidedishImage> images = imageRepository.findAllById(item.getSidedishItemImages().stream()
                    .map(SidedishItemImage::getSidedishImage).collect(Collectors.toList()));
            images.forEach(System.out::println);
        }
    }


    private SidedishItem createSidedishItem (String itemName) {
        return new SidedishItem(
                itemName, "편식하는 아이도 좋아하는 무언가",
                4000, 5000, 3, 1,
                "서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)",
                "2,500원 (40,000원 이상 구매 시 무료)");
    }


    private SidedishEvent createSidedishEvent (String eventName,String eventColor) {
        return eventRepository.save(new SidedishEvent(eventName,eventColor));
    }

    private SidedishImage createSidedishImage (String imageUrl, SidedishImageTypeEnum imageTypeEnum) {
        return imageRepository.save(new SidedishImage(imageUrl, imageTypeEnum));
    }
}
