package com.team10.banchan.model;

public class Description {
    private final String title;
    private final String description;

    Description(String title, String description) {
        this.title = title;
        this.description = description;
    }

    public static Description of(String title, String description) {
        return new Description(title, description);
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }
}
