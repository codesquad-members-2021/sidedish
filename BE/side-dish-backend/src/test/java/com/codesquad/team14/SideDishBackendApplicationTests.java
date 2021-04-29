package com.codesquad.team14;

import com.codesquad.team14.domain.Category;
import com.codesquad.team14.domain.Item;
import com.codesquad.team14.repository.CategoryRepository;
import com.codesquad.team14.service.CategoryService;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.ApplicationContext;

import java.util.Collection;
import java.util.Set;

import static org.assertj.core.api.Assertions.*;

@SpringBootTest
class SideDishBackendApplicationTests {

    @Autowired
    private ApplicationContext ctx;

    @Autowired
    private CategoryRepository categoryRepository;

    private Logger logger = LoggerFactory.getLogger(SideDishBackendApplicationTests.class);

    @Test
    @DisplayName("IoC 컨테이너 정상 동작 확인")
    void contextLoads() {
        assertThat(ctx).isNotNull();
        logger.debug("ApplicationContext is not null");
    }

    @Test
    @DisplayName("Spring Data JDBC MySQL 연동 확인")
    void readUser() {
        Long id = 1L;
        Category category = categoryRepository.findById(id).get();

        assertThat(category).isNotNull();
        logger.info("User ID : {} : {}", id, category);

        Long id2 = 77L;
        assertThat(categoryRepository.findById(id2).isPresent()).isFalse();

        Iterable<Category> categories = categoryRepository.findAll();
        assertThat(((Collection) categories).size()).isGreaterThanOrEqualTo(2);
        assertThat(categoryRepository.count()).isGreaterThan(3);

        Set<Item> item = category.getItems();
        assertThat(item.size()).isPositive();
    }
}
