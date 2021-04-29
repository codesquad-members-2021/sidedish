package com.mj_eno.sidedish.web.dto;

public class DetailDishResponseDTO {

    private final String hash;
    private final DetailDishDTO data;

    public DetailDishResponseDTO(String hash, DetailDishDTO data) {
        this.hash = hash;
        this.data = data;
    }

    public String getHash() {
        return hash;
    }

    public DetailDishDTO getData() {
        return data;
    }
}
