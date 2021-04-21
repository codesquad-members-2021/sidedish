package com.team10.banchan.repository;

import com.team10.banchan.model.Item;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import static org.assertj.core.api.Assertions.*;

@SpringBootTest
@Transactional
class ItemRepositoryTest {
    @Autowired
    private ItemRepository itemRepository;

    @Test
    void getItem() {
        Item item = itemRepository.findById(1L).orElseThrow(RuntimeException::new);
        assertThat(item).hasFieldOrPropertyWithValue("stock", 3);
    }
}
