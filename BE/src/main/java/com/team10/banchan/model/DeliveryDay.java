package com.team10.banchan.model;

public class DeliveryDay {
    private final TheDayOfWeek theDayOfWeek;

    DeliveryDay(TheDayOfWeek theDayOfWeek) {
        this.theDayOfWeek = theDayOfWeek;
    }

    public String korean() {
        return theDayOfWeek.korean;
    }

    public static DeliveryDay monday() {
        return new DeliveryDay(TheDayOfWeek.MON);
    }

    public static DeliveryDay tuesday() {
        return new DeliveryDay(TheDayOfWeek.TUE);
    }

    public static DeliveryDay wednesday() {
        return new DeliveryDay(TheDayOfWeek.WED);
    }

    public static DeliveryDay thursday() {
        return new DeliveryDay(TheDayOfWeek.THU);
    }

    public static DeliveryDay friday() {
        return new DeliveryDay(TheDayOfWeek.FRI);
    }

    public static DeliveryDay saturday() {
        return new DeliveryDay(TheDayOfWeek.SAT);
    }

    public static DeliveryDay sunday() {
        return new DeliveryDay(TheDayOfWeek.SUN);
    }

    enum TheDayOfWeek {
        MON("월"),
        TUE("화"),
        WED("수"),
        THU("목"),
        FRI("금"),
        SAT("토"),
        SUN("일");

        private final String korean;

        TheDayOfWeek(String korean) {
            this.korean = korean;
        }
    }
}

