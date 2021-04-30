package com.mj_eno.sidedish.service;

import com.mj_eno.sidedish.domain.user.User;
import com.mj_eno.sidedish.domain.user.UserRepository;
import com.mj_eno.sidedish.exception.EntityNotFoundException;
import com.mj_eno.sidedish.exception.ErrorMessage;
import com.mj_eno.sidedish.web.dto.EmailDTO;
import com.mj_eno.sidedish.web.dto.TokenDTO;
import com.mj_eno.sidedish.web.dto.UserInfoDTO;
import com.mj_eno.sidedish.web.dto.UserResponseDTO;
import com.mj_eno.sidedish.web.utils.GitHubUrl;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.core.env.Environment;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.util.List;

@PropertySource("classpath:/oauth.properties")
@Service
public class UserService {

    public static final String GITHUB_CLIENT_ID = "github.client.id";
    public static final String GITHUB_SECRET = "github.secret";
    public static final String CLIENT_ID = "client_id";
    public static final String CLIENT_SECRET = "client_secret";
    public static final String CODE = "code";
    public static final String TOKEN = "token";

    private final UserRepository userRepository;
    private final RestTemplate restTemplate;
    private final Environment environment;

    public UserService(UserRepository userRepository, Environment environment, RestTemplateBuilder restTemplateBuilder) {
        this.userRepository = userRepository;
        this.restTemplate = restTemplateBuilder.build();
        this.environment = environment;
    }

    public UserResponseDTO login(String code) {
        TokenDTO tokenDTO = tokenRequestApi(code);
        UserInfoDTO userInfoDTO = userInfoRequestApi(tokenDTO.getAccess_token());
        EmailDTO emailDTO = emailRequestApi(tokenDTO.getAccess_token());

        if (verifyUser(emailDTO)) {
            User user = findByEmail(emailDTO);
            user.update(userInfoDTO, emailDTO, tokenDTO);
            return new UserResponseDTO(userRepository.save(user));
        }
        User user = new User(userInfoDTO, emailDTO, tokenDTO);
        return new UserResponseDTO(userRepository.save(user));
    }

    public void logout(String token) {
        User user = findByToken(token);
        user.removeToken();
        userRepository.save(user);
    }

    private TokenDTO tokenRequestApi(String code) {
        String id = environment.getProperty(GITHUB_CLIENT_ID);
        String secret = environment.getProperty(GITHUB_SECRET);
        UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(GitHubUrl.ACCESS_TOKEN.getUrl())
                .queryParam(CLIENT_ID, id)
                .queryParam(CLIENT_SECRET, secret)
                .queryParam(CODE, code);
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.set(HttpHeaders.ACCEPT, MediaType.APPLICATION_JSON_VALUE);
        httpHeaders.set(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE);
        HttpEntity<?> httpEntity = new HttpEntity<>(httpHeaders);
        return restTemplate.exchange(builder.toUriString(), HttpMethod.POST, httpEntity, TokenDTO.class).getBody();
    }

    private UserInfoDTO userInfoRequestApi(String token) {
        UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(GitHubUrl.USER_INFO.getUrl());
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.set(HttpHeaders.AUTHORIZATION, TOKEN + " " + token);
        HttpEntity<?> httpEntity = new HttpEntity<>(httpHeaders);
        return restTemplate.exchange(builder.toUriString(), HttpMethod.GET, httpEntity, UserInfoDTO.class).getBody();
    }

    private EmailDTO emailRequestApi(String token) {
        UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(GitHubUrl.USER_EMAIL.getUrl());
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.set(HttpHeaders.AUTHORIZATION, TOKEN + " " + token);
        HttpEntity<?> httpEntity = new HttpEntity<>(httpHeaders);
        List<EmailDTO> emailDTOList = restTemplate.exchange(builder.toUriString(), HttpMethod.GET, httpEntity, new ParameterizedTypeReference<List<EmailDTO>>() {}).getBody();
        return emailDTOList.get(0);
    }

    private boolean verifyUser(EmailDTO emailDTO) {
        return userRepository.findByEmail(emailDTO.getEmail()).isPresent();
    }

    private User findByEmail(EmailDTO emailDTO) {
        return userRepository.findByEmail(emailDTO.getEmail()).orElseThrow(
                () -> new EntityNotFoundException(ErrorMessage.ENTITY_NOT_FOUND)
        );
    }

    private User findByToken(String token) {
        return userRepository.findByToken(token).orElseThrow(
                () -> new EntityNotFoundException(ErrorMessage.ENTITY_NOT_FOUND)
        );
    }
}
