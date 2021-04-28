package com.team15.sidedish.dto;

public class DetailDTO {
    private String hash;
    private DataDTO data;

    public DetailDTO(String hash, DataDTO data) {
        this.hash = hash;
        this.data = data;
    }

    public String getHash() {
        return hash;
    }

    public DataDTO getData() {
        return data;
    }
}
