package com.team10.banchan.model;

public class DetailSection {
    private final String url;

    DetailSection(String url) {
        this.url = url;
    }

    public String getUrl() {
        return url;
    }

    public static DetailSection of(String url) {
        return new DetailSection(url);
    }
}
