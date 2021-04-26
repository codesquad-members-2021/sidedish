package com.codesquad.sidedish.web.sidedish.DTO;

public class DetailDTO {
    private String hash;
    private DetailDataDTO data;

    public DetailDTO() {
    }

    public DetailDTO(String hash, DetailDataDTO data) {
        this.hash = hash;
        this.data = data;
    }

    public String getHash() {
        return hash;
    }

    public void setHash(String hash) {
        this.hash = hash;
    }

    public DetailDataDTO getData() {
        return data;
    }

    public void setData(DetailDataDTO data) {
        this.data = data;
    }
}
