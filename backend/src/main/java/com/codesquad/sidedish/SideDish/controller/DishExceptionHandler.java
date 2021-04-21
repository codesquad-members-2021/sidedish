package com.codesquad.sidedish.SideDish.controller;

import com.codesquad.sidedish.SideDish.exception.DishNotFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class DishExceptionHandler {
    private final Logger logger = LoggerFactory.getLogger(DishExceptionHandler.class);

    @ExceptionHandler(DishNotFoundException.class)
    public ResponseEntity handleDishNotFound(DishNotFoundException e) {
        logger.error(e.getMessage());
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body("존재하지 않는 Dish 입니다.");
    }
}
