package com.example.controller;

import com.example.error.ErrorCode;
import com.example.error.ErrorResponse;
import com.example.error.exception.notfound.NotFoundException;
import com.example.error.exception.user.LoginValidException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
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

    @ExceptionHandler(LoginValidException.class)
    public ResponseEntity<?> handleLoginException(LoginValidException e) {
        final ErrorCode errorCode = e.getErrorCode();
        return new ResponseEntity<>(ErrorResponse.from(errorCode), errorCode.getHttpStatus());
    }

    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResponseEntity<?> handleValidHasError(MethodArgumentNotValidException e) {
        final ErrorResponse of = ErrorResponse.of(ErrorCode.BAD_REQUEST, e.getBindingResult());
        return new ResponseEntity<>(of, HttpStatus.BAD_REQUEST);
    }

}
