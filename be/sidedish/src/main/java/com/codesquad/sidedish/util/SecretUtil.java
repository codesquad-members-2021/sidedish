package com.codesquad.sidedish.util;

import com.codesquad.sidedish.init.dto.ServerSecretDTO;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

public class SecretUtil {
    private static ServerSecretDTO SERVER_SECRET_DTO;

    private SecretUtil() {
    }

    public static void initServerSecretDto() {
        try {
            File serverSecretFile = ResourceUtils.getFile("classpath:server.secret.json");
            InputStream inputStream = new FileInputStream(serverSecretFile);
            ObjectMapper objectMapper = new ObjectMapper();
            SERVER_SECRET_DTO = objectMapper.readValue(inputStream, ServerSecretDTO.class);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static String clientId() {
        return SERVER_SECRET_DTO.getClientId();
    }

    public static String clientSecret() {
        return SERVER_SECRET_DTO.getClientSecret();
    }

    public static String serverSecret() {
        return SERVER_SECRET_DTO.getServerSecret();
    }
}
