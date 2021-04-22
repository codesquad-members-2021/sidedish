package com.example.controller;

import org.springframework.http.HttpStatus;

public class ApiResult<T> {

    private final HttpStatus statusCode;

    private final T body;

    private ApiResult(HttpStatus statusCode, T body) {
        this.statusCode = statusCode;
        this.body = body;
    }

    public static <T> ApiResult<T> succeed(HttpStatus statusCode, T body) {
        return new ApiResult<>(statusCode, body);
    }

    public T getBody() {
        return body;
    }

    public int getStatusCode() {
        return statusCode.value();
    }

}
