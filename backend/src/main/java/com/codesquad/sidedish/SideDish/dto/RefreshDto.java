package com.codesquad.sidedish.SideDish.dto;

public class RefreshDto {
    private final boolean refreshable;

    public RefreshDto(boolean refreshable) {
        this.refreshable = refreshable;
    }

    public boolean isRefreshable() {
        return refreshable;
    }
}
