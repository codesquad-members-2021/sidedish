package com.team15.sidedish.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(code = HttpStatus.BAD_REQUEST, reason = "주문할 수 없는 수량입니다.")
public class CannotOrderException extends RuntimeException {
    public CannotOrderException() {
        super("주문할 수 없는 수량입니다.");
    }

    public CannotOrderException(String errorMessage, Throwable throwable) {
        super(errorMessage, throwable);
    }

    public CannotOrderException(String errorMessage) {
        super(errorMessage);
    }
}
