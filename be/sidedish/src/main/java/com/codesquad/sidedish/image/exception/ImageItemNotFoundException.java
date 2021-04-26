package com.codesquad.sidedish.image.exception;

import com.codesquad.sidedish.global.exception.NotFoundException;

public class ImageItemNotFoundException extends NotFoundException {

    public ImageItemNotFoundException(String message) {
        super(message);
    }
}
