package com.team10.banchan.model;

public class ThumbImage {
    private final String url;

    ThumbImage(String url) {
        this.url = url;
    }

    public String getUrl() {
        return url;
    }

    public static ThumbImage of(String url) {
        return new ThumbImage(url);
    }
}
