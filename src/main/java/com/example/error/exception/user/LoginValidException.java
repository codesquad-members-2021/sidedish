package com.example.error.exception.user;

import com.example.error.ErrorCode;
import com.example.error.exception.BusinessException;

public class LoginValidException extends BusinessException {

    public LoginValidException() {
        super(ErrorCode.LOGIN_NOT_VALID);
    }

}
