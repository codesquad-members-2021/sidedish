package com.codesquad.sidedish.SideDish;


import com.codesquad.sidedish.SideDish.domain.delivery.DishDelivery;
import com.codesquad.sidedish.SideDish.domain.dish.Dish;
import com.codesquad.sidedish.SideDish.domain.dish.DishRepository;
import com.codesquad.sidedish.SideDish.domain.image.DishImage;
import com.codesquad.sidedish.SideDish.domain.sale.DishSale;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.codesquad.sidedish.SideDish.domain.Category;
import com.codesquad.sidedish.SideDish.domain.CategoryRepository;
import org.assertj.core.api.SoftAssertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Set;

import static org.assertj.core.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertEquals;


@SpringBootTest
class SideDishApplicationTests {

    private Logger logger = LoggerFactory.getLogger(SideDishApplicationTests.class);
    @Autowired
    private CategoryRepository categoryRepository;

    @Test
    @DisplayName("category 정보 테스트")
    void readCategory() {
        Long mainId = 1L;
        Category main = categoryRepository.findById(mainId).get();
        logger.info("main {}", main.toString());

        Long soupId = 2L;
        Category soup = categoryRepository.findById(soupId).get();
        logger.info("soup {}", soup.toString());

        Long sideId = 3L;
        Category side = categoryRepository.findById(sideId).get();
        logger.info("side {}", side.toString());

        checkNameAndEndPoint(main, "메인요리", "/main");
        checkNameAndEndPoint(soup, "국.찌개", "/soup");
        checkNameAndEndPoint(side, "반찬", "/side");
    }

    private void checkNameAndEndPoint(Category category, String name, String endPoint) {
        assertThat(category.getCategoryName()).isEqualTo(name);
        assertThat(category.getEndPoint()).isEqualTo(endPoint);
    }

    @Autowired
    private DishRepository dishRepository;

    @Test
    @DisplayName("category 별로 생성된 dish의 개수 확인")
    void countDish() {
//		String hash1 = "HBDEF";
//		Dish dish1 = dishRepository.findByDetailHash(hash1);
//		System.out.println(dish1.getCategoryId());
//
//		List<Dish> mains = dishRepository.findAllByCategoryId(1L);
//		System.out.println(mains.size());
        assertAll(
                () -> assertEquals(8, dishRepository.countDishforCategoryId(1L)),
                () -> assertEquals(8, dishRepository.countDishforCategoryId(2L)),
                () -> assertEquals(8, dishRepository.countDishforCategoryId(3L))
        );
    }

    @Test
    @DisplayName("dish 불러오기")
    void readDish() {
        Dish dish = dishRepository.findByDetailHash("HBBCC");
//        Set<DishImage> images = dish.getDishImages();
//        Set<DishDelivery> dishDeliveries = dish.getDishDeliveries();
//        Set<DishSale> dishSales = dish.getDishSales();
//        logger.info("images {}:", images);



    }

}
