package com.team10.banchan.response;

import com.fasterxml.jackson.annotation.JsonProperty;

public class ResponseBody<T> {

    private final Integer statusCode;
    private final T body;

    private ResponseBody(Integer statusCode, T body) {
        this.statusCode = statusCode;
        this.body = body;
    }

    public static <T> ResponseBody<T> ok(T body) {
        return new ResponseBody<>(200, body);
    }

    @JsonProperty("statusCode")
    public Integer getStatusCode() {
        return statusCode;
    }

    @JsonProperty("body")
    public T getBody() {
        return body;
    }
}
