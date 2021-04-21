package com.example.repository;

import com.example.domain.Category;
import com.example.domain.Item;
import com.example.domain.Orders;
import com.example.domain.User;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;

@SpringBootTest
@Transactional
class OrdersTest {

    @Autowired
    CategoryRepository categoryRepository;

    @Autowired
    UserRepository userRepository;

    @BeforeEach
    void setUp() {
        Category roach = Category.of("ROACH");

        roach.addItem(Item.of("[미노리치킨] 규동 250g",
                "일본인의 소울푸드! 한국인도 좋아하는 소고기 덮밥",
                5200,
                "이벤트 특가",
                "새벽 배송 / 전국배송",
                "http://localhost", 10));

        categoryRepository.save(roach);
    }

    @Test
    void orderTest() {

        User user = User.of("1232@naver.com","12345");
        final List<Item> items = categoryRepository.findById(1L).get().getItems();
        final Item item = items.get(0);
        System.out.println(item.getId());
        Orders orders = Orders.of(1, item.getId());
        user.addOrder(orders);
        userRepository.save(user);

        assertThat(userRepository.findById(1L).get().getOrders().get(0).getItemId()).isEqualTo(item.getId());

    }


}
