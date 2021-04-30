package com.codesquad.sidedish.dto;

import com.codesquad.sidedish.util.Status;
import com.fasterxml.jackson.annotation.JsonIgnore;

public class ResponseDto {

    @JsonIgnore
    private Status status;
    private String message;

    private ResponseDto(Status status) {
        this.status = status;
        this.message = status.getMessage();
    }

    public Status getStatus() {
        return status;
    }

    public String getMessage() {
        return message;
    }

    public static ResponseDto of (Status status){
        return new ResponseDto(status);
    }
}
