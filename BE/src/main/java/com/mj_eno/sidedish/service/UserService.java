package com.mj_eno.sidedish.service;

import com.mj_eno.sidedish.domain.user.User;
import com.mj_eno.sidedish.domain.user.UserRepository;
import com.mj_eno.sidedish.exception.EntityNotFoundException;
import com.mj_eno.sidedish.exception.ErrorMessage;
import com.mj_eno.sidedish.web.dto.EmailDTO;
import com.mj_eno.sidedish.web.dto.TokenDTO;
import com.mj_eno.sidedish.web.dto.UserInfoDTO;
import com.mj_eno.sidedish.web.dto.UserResponseDTO;
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
        String id = environment.getProperty("github.client.id");
        String secret = environment.getProperty("github.secret");
        String url = environment.getProperty("github.access.token.url");
        UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(url)
                .queryParam("client_id", id)
                .queryParam("client_secret", secret)
                .queryParam("code", code);
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.set(HttpHeaders.ACCEPT, MediaType.APPLICATION_JSON_VALUE);
        httpHeaders.set(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE);
        HttpEntity<?> httpEntity = new HttpEntity<>(httpHeaders);
        return restTemplate.exchange(builder.toUriString(), HttpMethod.POST, httpEntity, TokenDTO.class).getBody();
    }

    private UserInfoDTO userInfoRequestApi(String token) {
        UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl("https://api.github.com/user");
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.set(HttpHeaders.AUTHORIZATION, "token " + token);
        HttpEntity<?> httpEntity = new HttpEntity<>(httpHeaders);
        return restTemplate.exchange(builder.toUriString(), HttpMethod.GET, httpEntity, UserInfoDTO.class).getBody();
    }

    private EmailDTO emailRequestApi(String token) {
        UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl("https://api.github.com/user/emails");
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.set(HttpHeaders.AUTHORIZATION, "token " + token);
        HttpEntity<?> httpEntity3 = new HttpEntity<>(httpHeaders);
        List<EmailDTO> emailDTOList = restTemplate.exchange(builder.toUriString(), HttpMethod.GET, httpEntity3, new ParameterizedTypeReference<List<EmailDTO>>() {}).getBody();
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
