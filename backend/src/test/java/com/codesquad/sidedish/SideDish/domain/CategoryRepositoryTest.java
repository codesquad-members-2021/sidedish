package com.codesquad.sidedish.SideDish.domain;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.transaction.annotation.Transactional;

import static org.assertj.core.api.Assertions.assertThat;

@Transactional
@SpringBootTest
@ActiveProfiles("dev")
class CategoryRepositoryTest {

    private Logger logger = LoggerFactory.getLogger(CategoryRepositoryTest.class);
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
}
