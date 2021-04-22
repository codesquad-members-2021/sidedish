package com.codesquad.sidedish.SideDish;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceTransactionManagerAutoConfiguration;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;

// FIXME: DB 연동을 무효화하기 위해서 임시로 exclude 함, 나중에 수정할 예정
@SpringBootApplication(exclude = {
        DataSourceAutoConfiguration.class,
        DataSourceTransactionManagerAutoConfiguration.class,
        HibernateJpaAutoConfiguration.class})
public class SideDishApplication {

    public static void main(String[] args) {
        SpringApplication.run(SideDishApplication.class, args);
    }

}
