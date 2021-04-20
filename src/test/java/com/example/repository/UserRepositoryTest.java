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

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;

@SpringBootTest
@Transactional
class UserRepositoryTest {

    @Autowired
    UserRepository userRepository;

    @Test
    void test(){

        User user = User.of("1232@naver.com","12345");

        final User save = userRepository.save(user);

        assertThat(save.getEmail()).isEqualTo(userRepository.findById(save.getId()).get().getEmail());

    }

}
