package com.codesquad.team14.exception;

public class ItemNotFoundException extends RuntimeException {

    private final ErrorCode errorCode;

    public ItemNotFoundException() {
        super(ErrorCode.ITEM_NOT_FOUND.getMessage());
        this.errorCode = ErrorCode.ITEM_NOT_FOUND;
    }

    public ErrorCode getErrorCode() {
        return errorCode;
    }
}
