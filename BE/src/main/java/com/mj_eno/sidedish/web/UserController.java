package com.mj_eno.sidedish.web;

import com.mj_eno.sidedish.domain.user.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import javax.net.ssl.HttpsURLConnection;
import java.net.HttpURLConnection;

@PropertySource("classpath:/oauth.properties")
@RestController
public class UserController {

    public final UserRepository userRepository;
    private final Logger logger = LoggerFactory.getLogger(DishController.class);
    private final Environment environment;

    public UserController(UserRepository userRepository, Environment environment) {
        this.userRepository = userRepository;
        this.environment = environment;
    }

    @GetMapping("/login")
    public void login(@RequestParam String code) {
        String id = environment.getProperty("github.client.id");
        String secret = environment.getProperty("github.secret");
        String url = environment.getProperty("github.access.token.url");
        UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(url)
                .queryParam("client_id", id)
                .queryParam("client_secret", secret)
                .queryParam("code", code);
        System.out.println(builder.toUriString());

//        HttpURLConnection httpURLConnection;
//        HttpsURLConnection

//        HttpHeaders httpHeaders = new HttpHeaders();
//        httpHeaders.set(HttpHeaders.ACCEPT, MediaType.APPLICATION_JSON_VALUE);
//        httpHeaders.set(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE);
//        HttpEntity<?> httpEntity = new HttpEntity<>(httpHeaders);
//        restTemplate.exchange(builder.toUriString(), HttpMethod.POST, httpEntity, OrderDto.class).getBody();
    }
}
