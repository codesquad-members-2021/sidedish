package com.codesquad.sidedish.user.exception;

import com.codesquad.sidedish.global.exception.NotFoundException;

public class UserNotFoundException extends NotFoundException {
    private static final String ERROR_MESSAGE = "해당하는 유저 정보를 찾을 수 없습니다";
    public UserNotFoundException() {
        super(ERROR_MESSAGE);
    }
}
