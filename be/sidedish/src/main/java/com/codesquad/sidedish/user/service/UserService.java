package com.codesquad.sidedish.user.service;

import com.codesquad.sidedish.user.domain.User;
import com.codesquad.sidedish.user.domain.UserRepository;
import com.codesquad.sidedish.user.dto.UserInfoDTO;
import com.codesquad.sidedish.util.JwtUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService {

    private static final Logger logger = LoggerFactory.getLogger(UserService.class);

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public String login(UserInfoDTO userInfoDTO) {
        Optional<User> optionalUser = findUserByUserId(userInfoDTO.getId());
        User user;
        if (optionalUser.isPresent()) {
            user = optionalUser.get();
            user.update(userInfoDTO);
            userRepository.save(user);
        } else {
            user = createuser(userInfoDTO);
        }
        String jwtToken = JwtUtil.createToken(user);
        logger.info("jwtToken : {}", jwtToken);
        return jwtToken;
    }

    public User createuser(UserInfoDTO userInfoDTO) {
        return userRepository.save(new User(userInfoDTO));
    }

    public Optional<User> findUserByUserId(String userId) {
        return userRepository.findByUserId(userId);
    }
}
