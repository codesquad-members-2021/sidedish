package com.mj_eno.sidedish.web.dto;

import java.util.List;

public class DetailDishResponseDTO {

    String hash;
    DetailDishDTO data;

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
