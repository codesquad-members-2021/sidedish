package com.mj_eno.sidedish.domain.dish;

public class Price {

    private int nPrice;
    private int sPrice;
    private int point;

    public Price(int nPrice, int sPrice, int point) {
        this.nPrice = nPrice;
        this.sPrice = sPrice;
        this.point = point;
    }

    public int getnPrice() {
        return nPrice;
    }

    public int getsPrice() {
        return sPrice;
    }

    public int getPoint() {
        return point;
    }
}
