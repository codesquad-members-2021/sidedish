package com.codesquad.sidedish.event.exception;

import com.codesquad.sidedish.global.exception.NotFoundException;

public class EventNotFoundException extends NotFoundException {
    private static final String ERROR_REASON = "존재하지 않는 이벤트 입니다";

    public EventNotFoundException() {
        super(ERROR_REASON);
    }
}
