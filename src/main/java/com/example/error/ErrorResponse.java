package com.example.error;

import org.springframework.validation.BindingResult;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class ErrorResponse {

    private String message;
    private LocalDateTime time;
    private List<FieldError> errors = new ArrayList<>();

    public ErrorResponse(String message, LocalDateTime time, List<FieldError> fieldErrors) {
        this.message = message;
        this.time = time;
        this.errors = fieldErrors;
    }

    public static ErrorResponse from(ErrorCode errorCode) {
        return ErrorResponse.builder()
                .message(errorCode.getReason())
                .time(LocalDateTime.now())
                .build();
    }

    public static ErrorResponse of(ErrorCode errorCode, BindingResult bindingResult) {
        return ErrorResponse.builder()
                .message(errorCode.getReason())
                .time(LocalDateTime.now())
                .errors(FieldError.of(bindingResult))
                .build();
    }

    public static ErrorResponseBuilder builder() {
        return new ErrorResponseBuilder();
    }

    public static class ErrorResponseBuilder {

        private String message;
        private LocalDateTime localDateTime;
        private List<FieldError> fieldErrors;

        public ErrorResponseBuilder message(String message) {
            this.message = message;
            return this;
        }

        public ErrorResponseBuilder time(LocalDateTime time) {
            this.localDateTime = time;
            return this;
        }

        public ErrorResponseBuilder errors(List<FieldError> fieldErrors) {
            this.fieldErrors = fieldErrors;
            return this;
        }

        public ErrorResponse build() {
            return new ErrorResponse(this.message, this.localDateTime, this.fieldErrors);
        }

    }

    public String getMessage() {
        return message;
    }

    public LocalDateTime getTime() {
        return time;
    }

    public List<FieldError> getErrors() {
        return errors;
    }

}
