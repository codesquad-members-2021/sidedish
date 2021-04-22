package com.example.service;

import com.example.domain.User;
import com.example.dto.UserDto;
import com.example.repository.UserRepository;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.data.jdbc.DataJdbcTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.transaction.annotation.Transactional;

import static org.assertj.core.api.Assertions.*;

@Transactional
@SpringBootTest
class UserServiceTest {

    @Autowired
    UserService userService;

    @Autowired
    UserRepository userRepository;

    static final String EXPECTED_EMAIL = "dev0jsh@gmail.com";
    static final String EXPECTED_PASSWORD = "1234";

    @BeforeEach
    void setUp() {
        userService.join(new UserDto(EXPECTED_EMAIL, EXPECTED_PASSWORD));
    }

    @Test
    @DisplayName("유저 정상적인 값의 회원가입 성공시 DB 에 잘 저장되는지 테스트 한다.")
    void joinTest() {
        assertThat(userRepository.findByEmail(EXPECTED_EMAIL).get().getEmail()).isEqualTo(EXPECTED_EMAIL);
    }

    @Test
    @DisplayName("유저 정상적인 값으로 로그인 시 잘 로그인 되는지 확인한다.")
    void loginTest() {
        User loginedUser = userService.login(new UserDto(EXPECTED_EMAIL, EXPECTED_PASSWORD));
        assertThat(userRepository.findById(1L).get().getEmail()).isEqualTo(loginedUser.getEmail());
    }

}
