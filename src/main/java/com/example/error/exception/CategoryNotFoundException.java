package com.example.error.exception;

import com.example.error.ErrorCode;

public class CategoryNotFoundException extends NotFoundException {

    public CategoryNotFoundException() {
        super(ErrorCode.CATEGORY_NOT_FOUND);
    }

}
