package com.codesquad.sidedish.SideDish.dto;

public class DishDetailDto {
    private final String hash;
    private final DishDetailDataDto data;

    public DishDetailDto(String hash, DishDetailDataDto data) {
        this.hash = hash;
        this.data = data;
    }

    public String getHash() {
        return hash;
    }

    public DishDetailDataDto getData() {
        return data;
    }
}
