package com.codesquad.team14.exception;

import org.springframework.http.HttpStatus;

public enum ErrorCode {

    ITEM_NOT_FOUND(HttpStatus.NOT_FOUND, "해당하는 품목이 존재하지 않습니다."),
    CATEGORY_NOT_FOUND(HttpStatus.NOT_FOUND, "해당하는 카테고리가 존재하지 않습니다.");

    private final HttpStatus httpStatus;
    private final String message;

    ErrorCode(HttpStatus httpStatus, String message) {
        this.httpStatus = httpStatus;
        this.message = message;
    }

    public HttpStatus getHttpStatus() {
        return httpStatus;
    }

    public String getMessage() {
        return message;
    }
}
