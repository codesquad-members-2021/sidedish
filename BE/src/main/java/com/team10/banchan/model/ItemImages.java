package com.team10.banchan.model;

public class ItemImages {

    private final String alt;
    private final String topImage;
    private final String image;

    ItemImages(String alt, String topImage, String image) {
        this.alt = alt;
        this.topImage = topImage;
        this.image = image;
    }

    public static ItemImages of(String alt, String topImage,String image) {
        return new ItemImages(alt, topImage, image);
    }

    public String getAlt() {
        return alt;
    }

    public String getTopImage() {
        return topImage;
    }

    public String getImage() {
        return image;
    }
}
