package sidedish.domain;

import org.springframework.data.annotation.Id;

import java.util.HashSet;
import java.util.Set;

public class Category {

    @Id
    private Long id;

    private String categoryType;
    private Set<Dish> dishes;

    public Category(String categoryType) {
        this.categoryType = categoryType;
        this.dishes = new HashSet<>();
    }

    public String getTitle() {
        return categoryType;
    }

    public Set<Dish> getDishes() {
        return dishes;
    }

}
