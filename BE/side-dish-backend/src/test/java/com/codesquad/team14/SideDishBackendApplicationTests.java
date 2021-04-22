package com.codesquad.team14;

import com.codesquad.team14.repository.CategoryRepository;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.ApplicationContext;

import static org.assertj.core.api.Assertions.*;

@SpringBootTest
class SideDishBackendApplicationTests {

    @Autowired
    private ApplicationContext ctx;

    @Autowired
    private CategoryRepository categoryRepository;

    private Logger logger = LoggerFactory.getLogger(SideDishBackendApplicationTests.class);

    @Test
    void contextLoads() {
        assertThat(ctx).isNotNull();
        logger.debug("ApplicationContext is not null");
    }

    @Test
    void categoryRepo_FindById() {

    }

}
