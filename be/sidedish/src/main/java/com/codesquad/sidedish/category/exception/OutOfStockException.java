package com.codesquad.sidedish.category.exception;

public class OutOfStockException extends RuntimeException {
    private static final String ERROR_REASON = "재고 수량 미달입니다";

    public OutOfStockException() {
        super(ERROR_REASON);
    }

}
