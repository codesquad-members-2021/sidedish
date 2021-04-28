package com.codesquad.sidedish.init.dto;

public class ServerSecretDTO {
    private String clientId;
    private String clientSecret;

    public ServerSecretDTO() {
    }

    public String getClientId() {
        return clientId;
    }

    public String getClientSecret() {
        return clientSecret;
    }

    @Override
    public String toString() {
        return "ServerSecretDTO{" +
                "clientId='" + clientId + '\'' +
                ", clientSecret='" + clientSecret + '\'' +
                '}';
    }
}
