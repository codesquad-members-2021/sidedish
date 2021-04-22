package com.example.service;

import com.example.domain.User;
import com.example.dto.UserDto;
import com.example.error.exception.notfound.UserNotFoundException;
import com.example.error.exception.user.LoginValidException;
import com.example.repository.UserRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpSession;

@Service
@Transactional(readOnly = true)
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Transactional
    public void join(UserDto userDto) {
        User user = User.map(userDto);
        userRepository.save(user);
    }

    public User login(UserDto userDto) {
        User user = userRepository.findByEmail(userDto.getEmail()).orElseThrow(LoginValidException::new);
        String password = user.getPassword();
        if(!password.equals(userDto.getPassword())) {
            throw new LoginValidException();
        }
        return user;
    }

}
