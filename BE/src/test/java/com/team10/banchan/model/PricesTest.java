package com.team10.banchan.model;

import org.junit.jupiter.api.Test;

import java.math.BigDecimal;

import static org.assertj.core.api.Assertions.*;

class PricesTest {
    @Test
    void formatTest() {
        Prices prices = Prices.of(new BigDecimal(10000), new BigDecimal(1000000), new BigDecimal(2500) );
        assertThat(prices.getnPrice()).isEqualTo("10,000원");
        assertThat(prices.getsPrice()).isEqualTo("1,000,000원");
        assertThat(prices.getDeliveryFee()).isEqualTo("2,500원");

    }

}
