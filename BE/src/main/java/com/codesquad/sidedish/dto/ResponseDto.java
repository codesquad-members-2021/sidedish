package com.codesquad.sidedish.dto;

import com.codesquad.sidedish.util.Status;
import com.fasterxml.jackson.annotation.JsonIgnore;

public class ResponseDto {

    private String message;

    public ResponseDto(String message) {
        this.message = message;
    }

    public String getMessage() {
        return message;
    }

    @Override
    public String toString() {
        return "ResponseDto{" +
                "message='" + message + '\'' +
                '}';
    }
}
