package com.codesquad.sidedish;

public class NotReadJsonFileException extends RuntimeException {
    public NotReadJsonFileException(String jsonFilePath, Throwable e) {
        super("파일 읽는 중 에러 발생. jsonFilePath: " + jsonFilePath, e);
    }
}
