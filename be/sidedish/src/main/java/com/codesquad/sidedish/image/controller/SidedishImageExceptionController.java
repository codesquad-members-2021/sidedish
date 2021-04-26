package com.codesquad.sidedish.image.controller;

import com.codesquad.sidedish.global.domain.dto.ErrorResponseDTO;
import com.codesquad.sidedish.image.exception.ImageNotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class SidedishImageExceptionController {

    @ResponseStatus(HttpStatus.NOT_FOUND)
    @ExceptionHandler(ImageNotFoundException.class)
    public ErrorResponseDTO handleImageNotFoundException(ImageNotFoundException exception) {
        return new ErrorResponseDTO(exception.getMessage());
    }
}
