package com.codesquad.sidedish.image.exception;

import com.codesquad.sidedish.global.exception.NotFoundException;

public class ImageItemNotFoundException extends NotFoundException {
    private static final String ERROR_REASON = "존재하지 않는 이미지 아이템 입니다";

    public ImageItemNotFoundException() {
        super(ERROR_REASON);
    }
}
