package com.example.error.exception;

import com.example.error.ErrorCode;

public class ItemNotFoundException extends NotFoundException {

    public ItemNotFoundException() {
        super(ErrorCode.ITEM_NOT_FOUND);
    }

}
