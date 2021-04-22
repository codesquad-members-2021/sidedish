package com.example.error.exception;

import com.example.error.ErrorCode;

public class UserNotFoundException extends NotFoundException {

    public UserNotFoundException() {
        super(ErrorCode.USER_NOT_FOUND);
    }

}
