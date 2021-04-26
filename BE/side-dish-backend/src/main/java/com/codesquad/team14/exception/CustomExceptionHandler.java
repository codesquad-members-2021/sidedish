package com.codesquad.team14.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class CustomExceptionHandler {

    @ExceptionHandler(ElementNotFoundException.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST)
    public void handleElementNotFoundException() {
    }
}
