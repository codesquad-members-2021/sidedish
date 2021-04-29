package com.codesquad.sidedish.global.domain.dto;

public class ErrorResponseDTO {
    private final String reason;

    public ErrorResponseDTO(String reason) {
        this.reason = reason;
    }

    public String getReason() {
        return reason;
    }
}
