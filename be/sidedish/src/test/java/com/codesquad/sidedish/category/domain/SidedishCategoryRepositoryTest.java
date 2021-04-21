package com.codesquad.sidedish.category.domain;

import com.codesquad.sidedish.category.service.SidedishItemService;
import com.codesquad.sidedish.event.domain.SidedishEvent;
import com.codesquad.sidedish.event.domain.SidedishEventRepository;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@SpringBootTest
@Transactional
class SidedishCategoryRepositoryTest {

    @Autowired
    CategoryRepository categoryRepository;

    @Autowired
    SidedishEventRepository eventRepository;

    @Autowired
    SidedishItemService itemService;

    Logger logger = LoggerFactory.getLogger(SidedishCategoryRepositoryTest.class);

    @Test
    @DisplayName("카테고리를 생성할 수 있어야 함")
    void createCategory() {
        SidedishCategory sidedishCategory = new SidedishCategory("메인요리");
        categoryRepository.save(sidedishCategory);

        Iterable<SidedishCategory> categories = categoryRepository.findAll();

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

        categoryRepository.save(sidedishCategory);

        Iterable<SidedishCategory> categories = categoryRepository.findAll();

        for (SidedishCategory currentSidedishCategory : categories) {
            logger.info("category : {}", currentSidedishCategory);
            List<SidedishItem> sidedishItemList = currentSidedishCategory.getSidedishItemList();
            sidedishItemList.forEach(System.out::println);
        }
    }

    @Test
    @DisplayName("아이템 DTO를 생성")
    void createItemDTO() {

        SidedishCategory mainCategory = categoryRepository.findByCategoryName("main");
        SidedishEvent event = createSidedishEvent("점심 특가", "#ffffff");

        SidedishItem sidedishItem1 = createSidedishItem("맛있는 반찬");
        SidedishItem sidedishItem2 = createSidedishItem("상큼한 반찬");

        sidedishItem1.addEvent(event);
        sidedishItem2.addEvent(event);

        mainCategory.addSidedishItem(sidedishItem1);
        mainCategory.addSidedishItem(sidedishItem2);

        categoryRepository.save(mainCategory);

        List<SidedishItemDTO> itemDTOS = itemService.showItemList("main");


        for (SidedishItemDTO sidedishItemDTO : itemDTOS) {
            logger.info("ItemDTO : {}", sidedishItemDTO.toString());
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
}
