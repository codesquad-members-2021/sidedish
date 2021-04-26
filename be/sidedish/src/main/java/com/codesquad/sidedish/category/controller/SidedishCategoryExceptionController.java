package com.codesquad.sidedish.category.controller;

import com.codesquad.sidedish.category.exception.CategoryNotFoundException;
import com.codesquad.sidedish.category.exception.ItemNotFoundException;
import com.codesquad.sidedish.category.exception.OutOfStockException;
import com.codesquad.sidedish.event.exception.EventNotFoundException;
import com.codesquad.sidedish.global.domain.dto.ErrorResponseDTO;
import com.codesquad.sidedish.global.exception.NotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class SidedishCategoryExceptionController {

    @ExceptionHandler({CategoryNotFoundException.class, ItemNotFoundException.class, EventNotFoundException.class})
    public ResponseEntity<ErrorResponseDTO> handleNotFoundException(NotFoundException exception) {
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(new ErrorResponseDTO(exception.getMessage()));
    }

    @ExceptionHandler(OutOfStockException.class)
    public ResponseEntity<ErrorResponseDTO> handleOutOfStockException(OutOfStockException exception) {
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(new ErrorResponseDTO(exception.getMessage()));
    }
}
