package com.team10.banchan.model;

public class Badge {

    private final BadgeType badgeType;

    Badge(BadgeType badgeType) {
        this.badgeType = badgeType;
    }

    public static Badge event() {
        return new Badge(BadgeType.EVENT);
    }

    public static Badge launching() {
        return new Badge(BadgeType.LAUNCHING);
    }

    public String getName() {
        return this.badgeType.name;
    }

    enum BadgeType {
        EVENT("이벤트특가"),
        LAUNCHING("런칭특가");

        private final String name;

        BadgeType(String name) {
            this.name = name;
        }
    }
}

