package com.team10.banchan.model;

enum Badge {
    EVENT("이벤트특가"), LAUNCHIING("런칭특가");

    private final String name;

    Badge(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}

