package com.codesquad.sidedish.category.exception;

import com.codesquad.sidedish.global.exception.NotFoundException;

public class CategoryNotFoundException extends NotFoundException {
    private static final String ERROR_REASON = "존재하지 않는 카테고리 입니다";

    public CategoryNotFoundException() {
        super(ERROR_REASON);
    }
}
