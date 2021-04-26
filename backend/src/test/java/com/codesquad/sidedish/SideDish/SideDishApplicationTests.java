package com.codesquad.sidedish.SideDish;


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


@Transactional
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

        SoftAssertions softly = new SoftAssertions();
        checkNameAndEndPoint(softly, main, "메인요리", "/main");
        checkNameAndEndPoint(softly, soup, "국.찌개", "/soup");
        checkNameAndEndPoint(softly, side, "반찬", "/side");
        softly.assertAll();
    }

    private void checkNameAndEndPoint(SoftAssertions softly, Category category, String name, String endPoint) {
        softly.assertThat(category.getCategoryName()).isEqualTo(name);
        softly.assertThat(category.getEndPoint()).isEqualTo(endPoint);
    }

}
