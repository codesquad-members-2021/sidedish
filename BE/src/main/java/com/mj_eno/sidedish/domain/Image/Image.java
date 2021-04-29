package com.mj_eno.sidedish.domain.Image;

import org.springframework.data.annotation.Id;

public class Image {

    @Id
    private Long id;
    private String url;
    private boolean top;

    public Long getId() {
        return id;
    }

    public String getUrl() {
        return url;
    }

    public boolean isTop() {
        return top;
    }
}
