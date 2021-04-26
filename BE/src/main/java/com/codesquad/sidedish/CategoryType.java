package com.codesquad.sidedish;

public enum CategoryType {
    MAIN(1L),
    SOUP(2L),
    SIDE( 3L);

    private Long typeNum;

    private CategoryType(Long typeNum) {
        this.typeNum = typeNum;
    }

    public Long getTypeNum() {
        return this.typeNum;
    }
}
