package com.example.error.exception.notfound;

import com.example.error.ErrorCode;
import com.example.error.exception.BusinessException;

public class NotFoundException extends BusinessException {

    public NotFoundException(ErrorCode errorCode) {
        super(errorCode);
    }

}
