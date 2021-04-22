package sidedish.domain;

import org.springframework.data.annotation.Id;

import java.util.Set;

public class Category {

    @Id
    private Long id;

    private String title;
    private Set<Dish> dishes;

    public Category(String title) {
        this.title = title;
    }

    public void addDish(Dish dish) {
        dishes.add(dish);
    }

    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public Set<Dish> getDishes() {
        return dishes;
    }

}
