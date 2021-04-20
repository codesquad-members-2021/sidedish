package com.example.repository;

import com.example.domain.Category;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.data.jdbc.DataJdbcTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;

@SpringBootTest
@Transactional
class CategoryRepositoryTest {

    @Autowired
    CategoryRepository categoryRepository;

    @Test
    void test(){
        Category category = Category.of("te");

        final Category save = categoryRepository.save(category);

        assertThat(save.getId()).isEqualTo(categoryRepository.findById(save.getId()).get().getId());

    }

}
