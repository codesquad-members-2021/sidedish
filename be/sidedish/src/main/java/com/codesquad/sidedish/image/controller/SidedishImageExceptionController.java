package com.codesquad.sidedish.image.controller;

import com.codesquad.sidedish.global.domain.dto.ErrorResponseDTO;
import com.codesquad.sidedish.image.exception.ImageNotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class SidedishImageExceptionController {

    @ExceptionHandler(ImageNotFoundException.class)
    public ResponseEntity<ErrorResponseDTO> handleImageNotFoundException(ImageNotFoundException exception) {
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(new ErrorResponseDTO(exception.getMessage()));
    }
}
