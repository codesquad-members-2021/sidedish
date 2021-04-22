package com.mj_eno.sidedish.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.BAD_REQUEST)
public class OrderFailedException extends RuntimeException {

    public OrderFailedException(String errorMessage) {
        super(errorMessage);
    }

    public OrderFailedException(ErrorMessage errorMessage) {
        super(errorMessage.getErrorMessage());
    }
}
