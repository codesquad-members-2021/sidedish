package com.codesquad.team14.exception;

public class CategoryNotFoundException extends RuntimeException {

    private final ErrorCode errorCode;

    public CategoryNotFoundException() {
        super(ErrorCode.CATEGORY_NOT_FOUND.getMessage());
        this.errorCode = ErrorCode.CATEGORY_NOT_FOUND;
    }

    public ErrorCode getErrorCode() {
        return errorCode;
    }
}
