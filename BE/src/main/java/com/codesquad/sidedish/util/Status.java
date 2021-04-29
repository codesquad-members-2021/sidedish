package com.codesquad.sidedish.util;

public enum Status {
    OK("Success"),
    NOTFOUND_CATEGORY("존재하지 않는 카테고리입니다."),
    NOTFOUND_DISH("존재하지 않는 반찬입니다."),
    OUT_OF_STOCK("반찬 재고 부족");

    private String message;

    Status(String message) {
        this.message = message;
    }

    public String getMessage() {
        return message;
    }
}
