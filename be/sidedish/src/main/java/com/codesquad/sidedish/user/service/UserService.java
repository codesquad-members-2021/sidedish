package com.codesquad.sidedish.user.service;

import com.codesquad.sidedish.user.domain.User;
import com.codesquad.sidedish.user.domain.UserRepository;
import com.codesquad.sidedish.user.dto.UserInfoDTO;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void login(UserInfoDTO userInfoDTO, String accessToken) {
        Optional<User> optionalUser = findUserByUserId(userInfoDTO.getId());
        User user;
        if (optionalUser.isPresent()) {
            //토큰 갱신
            user = optionalUser.get();
            user.updateToken(accessToken);
            userRepository.save(user);
        } else {
            //유저 생성
            User createdUser = createuser(userInfoDTO);
        }
        
    }



    public User createuser(UserInfoDTO userInfoDTO) {
        return userRepository.save(new User(userInfoDTO));
    }

    public Optional<User> findUserByUserId(String userId) {
        return userRepository.findByUserId(userId);
    }
}
