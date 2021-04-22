package com.mj_eno.sidedish.exception;

public enum ErrorMessage {

    ENTITY_NOT_FOUND("해당 엔티티를 찾을 수 없습니다."),
    ORDER_FAILED("주문을 실패 했습니다.");

    private final String errorMessage;

    ErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public String getErrorMessage() {
        return errorMessage;
    }
}
