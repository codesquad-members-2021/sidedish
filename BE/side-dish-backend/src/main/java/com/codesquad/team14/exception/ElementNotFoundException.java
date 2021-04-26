package com.codesquad.team14.exception;

public class ElementNotFoundException extends RuntimeException {

    public static final String ITEM_NOT_FOUND = "해당하는 품목이 존재하지 않습니다";

    public ElementNotFoundException() {
        super(ITEM_NOT_FOUND);
    }
}
