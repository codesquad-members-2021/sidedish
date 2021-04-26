package com.codesquad.sidedish.image.exception;

import com.codesquad.sidedish.global.exception.NotFoundException;

public class ImageNotFoundException extends NotFoundException {
    private static final String ERROR_REASON = "이미지를 찾을 수 없습니다";

    public ImageNotFoundException() {
        super(ERROR_REASON);
    }
}
