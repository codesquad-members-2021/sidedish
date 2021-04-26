package com.codesquad.team14.exception;

public class ErrorResponse {

    private int statusCode;
    private String message;

    public ErrorResponse(int status, String message) {
        this.statusCode = status;
        this.message = message;
    }

    public static ErrorResponse from(ErrorCode errorCode) {
        return new ErrorResponse(
                errorCode.getHttpStatus().value(),
                errorCode.getMessage()
        );
    }

    public int getStatusCode() {
        return statusCode;
    }

    public String getMessage() {
        return message;
    }
}
