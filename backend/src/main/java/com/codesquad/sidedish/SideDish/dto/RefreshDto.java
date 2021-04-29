package com.codesquad.sidedish.SideDish.dto;

public class RefreshDto {
    private final Boolean refreshable;

    public RefreshDto(Boolean refreshable) {
        this.refreshable = refreshable;
    }

    public Boolean isRefreshable() {
        return refreshable;
    }
}
