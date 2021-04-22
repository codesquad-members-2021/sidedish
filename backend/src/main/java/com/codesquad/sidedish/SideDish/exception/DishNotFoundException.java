package com.codesquad.sidedish.SideDish.exception;

public class DishNotFoundException extends RuntimeException {
    public DishNotFoundException(String detailHash) {
        super(String.format("Dish does not exist: %s", detailHash));
    }
}
