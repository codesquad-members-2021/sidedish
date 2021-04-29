package com.codesquad.sidedish.image.domain;

import org.springframework.data.annotation.Id;

import java.util.List;
import java.util.stream.Collectors;

public class SidedishImage {
    @Id
    private Long id;

    private String imageUrl;

    protected SidedishImage() {
    }

    public SidedishImage(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public static List<String> imageListToImageUrlList(List<SidedishImage> imageList) {
        return imageList.stream().map(SidedishImage::getImageUrl).collect(Collectors.toList());
    }

    public Long getId() {
        return id;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    @Override
    public String toString() {
        return "SidedishImage{" +
                "id=" + id +
                ", imageUrl='" + imageUrl + '\'' +
                '}';
    }
}
