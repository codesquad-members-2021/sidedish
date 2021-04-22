package com.example.controller;

import com.example.error.ErrorCode;
import com.example.error.ErrorResponse;
import com.example.error.exception.NotFoundException;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(NotFoundException.class)
    public ResponseEntity<?> handleNotFoundException(NotFoundException e) {
        final ErrorCode errorCode = e.getErrorCode();
        final ErrorResponse from = ErrorResponse.from(errorCode);
        return new ResponseEntity<>(from, errorCode.getHttpStatus());
    }

}
