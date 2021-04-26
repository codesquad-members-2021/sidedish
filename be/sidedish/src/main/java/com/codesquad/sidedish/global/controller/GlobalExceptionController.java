package com.codesquad.sidedish.global.controller;

import com.codesquad.sidedish.category.exception.CategoryNotFoundException;
import com.codesquad.sidedish.category.exception.ItemNotFoundException;
import com.codesquad.sidedish.category.exception.OutOfStockException;
import com.codesquad.sidedish.event.exception.EventNotFoundException;
import com.codesquad.sidedish.global.domain.dto.ErrorResponseDTO;
import com.codesquad.sidedish.global.exception.NotFoundException;
import com.codesquad.sidedish.image.exception.ImageNotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class GlobalExceptionController {
    @ResponseStatus(HttpStatus.NOT_FOUND)
    @ExceptionHandler({CategoryNotFoundException.class, ItemNotFoundException.class, EventNotFoundException.class})
    public ErrorResponseDTO handleNotFoundException(NotFoundException exception) {
        return new ErrorResponseDTO(exception.getMessage());
    }

    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(OutOfStockException.class)
    public ErrorResponseDTO handleOutOfStockException(OutOfStockException exception) {
        return new ErrorResponseDTO(exception.getMessage());
    }

    @ResponseStatus(HttpStatus.NOT_FOUND)
    @ExceptionHandler(ImageNotFoundException.class)
    public ErrorResponseDTO handleImageNotFoundException(ImageNotFoundException exception) {
        return new ErrorResponseDTO(exception.getMessage());
    }
}
