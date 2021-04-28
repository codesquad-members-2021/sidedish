package com.codesquad.sidedish.utils;

public class NotParsingJsonFileException extends RuntimeException {
    public NotParsingJsonFileException(String jsonFilePath, Throwable e) {
        super("Json파일 파싱 중 에러 발생. jsonFilePath: " + jsonFilePath, e);
    }
}
