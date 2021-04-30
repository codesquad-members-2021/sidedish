package com.codesquad.sidedish.SideDish.domain;

import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

public class DishList {
    private final Set<Dish> dishes = new LinkedHashSet<>();
    private final Map<Dish, Set<Delivery>> deliveriesMap = new HashMap<>();
    private final Map<Dish, Set<Sale>> salesMap = new HashMap<>();

    public void addDish(Dish dish, Delivery delivery, Sale sale) {
        dishes.add(dish);

        Set<Delivery> deliveries = getDeliveries(dish);
        Set<Sale> sales = getSales(dish);

        deliveries.add(delivery);
        sales.add(sale);

        deliveriesMap.put(dish, deliveries);
        salesMap.put(dish, sales);
    }

    public Set<Dish> getDishes() {
        return dishes;
    }

    public Set<Delivery> getDeliveries(Dish dish) {
        return deliveriesMap.getOrDefault(dish, new LinkedHashSet<>());
    }

    public Set<Sale> getSales(Dish dish) {
        return salesMap.getOrDefault(dish, new LinkedHashSet<>());
    }
}
