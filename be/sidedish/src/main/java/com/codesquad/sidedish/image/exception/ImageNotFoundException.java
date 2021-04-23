package com.codesquad.sidedish.image.exception;

public class ImageNotFoundException extends RuntimeException {
    private static final String ERROR_REASON = "이미지를 찾을 수 없습니다";

    public ImageNotFoundException() {
        super(ERROR_REASON);
    }
}
