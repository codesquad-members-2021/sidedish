package com.team10.banchan.model;

enum DeliveryDay {
    MON("월"),
    TUE("화"),
    WED("수"),
    THU("목"),
    FRI("금"),
    SAT("토"),
    SUN("일");

    private final String korean;

    DeliveryDay(String korean) {
        this.korean = korean;
    }
}
