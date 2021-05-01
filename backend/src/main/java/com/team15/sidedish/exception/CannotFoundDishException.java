package com.team15.sidedish.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(code = HttpStatus.NOT_FOUND, reason = "해당하는 디쉬 정보를 찾을 수 없습니다.")
public class CannotFoundDishException extends RuntimeException {
    public CannotFoundDishException() {
        super("디쉬 정보를 찾을 수 없습니다.");
    }

    public CannotFoundDishException(String message) {
        super(message);
    }

    public CannotFoundDishException(String message, Throwable cause) {
        super(message, cause);
    }
}
