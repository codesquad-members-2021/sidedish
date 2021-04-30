package com.codesquad.sidedish.SideDish.domain;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Optional;

@Repository
public class DishDao {
    private Logger logger = LoggerFactory.getLogger(DishDao.class);

    private JdbcTemplate jdbcTemplate;
    private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    @Autowired
    public DishDao(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
        namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
    }


    public DishList findAllByCategoryId(Long categoryId) {
        String sql = "SELECT dish.*, delivery.delivery_type, sale.badge, sale.sale_type, sale.sale_value from sidedish.dish"
                + " LEFT OUTER JOIN sidedish.dish_delivery ON dish.detail_hash = dish_delivery.dish"
                + " LEFT OUTER JOIN sidedish.delivery ON delivery.id = dish_delivery.delivery"
                + " LEFT OUTER JOIN sidedish.dish_sale ON dish.detail_hash = dish_sale.dish"
                + " LEFT OUTER JOIN sidedish.sale ON sale.id = dish_sale.sale"
                + " WHERE dish.category_id = " + categoryId;

        DishList dishList = new DishList();
        jdbcTemplate.query(sql, (rs, rowNum) -> {
            Dish dish = new Dish(
                    rs.getString("detail_hash"),
                    rs.getString("image"),
                    rs.getString("title"),
                    rs.getString("description"),
                    rs.getInt("price"),
                    rs.getInt("sale_price"),
                    rs.getInt("point"),
                    rs.getString("delivery_info"),
                    rs.getInt("delivery_fee"),
                    rs.getLong("category_id"),
                    rs.getInt("quantity"),
                    Optional.ofNullable(rs.getTimestamp("current_date_time")).orElse(new Timestamp(new Date().getTime())).toLocalDateTime()
            );

            Delivery delivery = new Delivery(rs.getString("delivery_type"));
            Sale sale = new Sale(rs.getString("badge"),
                    rs.getString("sale_type"),
                    rs.getInt("sale_value"));
            dishList.addDish(dish, delivery, sale);

            return null;
        });
        return dishList;
    }
}
