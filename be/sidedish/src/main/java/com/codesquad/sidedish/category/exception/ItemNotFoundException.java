package com.codesquad.sidedish.category.exception;

import com.codesquad.sidedish.global.exception.NotFoundException;

public class ItemNotFoundException extends NotFoundException {
    private static final String ERROR_REASON = "존재하지 않는 아이템 입니다";

    public ItemNotFoundException() {
        super(ERROR_REASON);
    }
}
