package com.team10.banchan.model;

public class TopImage {
    private final String alt;
    private final String topImage;

    TopImage(String alt, String topImage) {
        this.alt = alt;
        this.topImage = topImage;
    }

    public static TopImage of(String alt, String topImage) {
        return new TopImage(alt, topImage);
    }

    public String getAlt() {
        return alt;
    }

    public String getTopImage() {
        return topImage;
    }
}
