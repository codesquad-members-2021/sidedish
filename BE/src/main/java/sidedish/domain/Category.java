package sidedish.domain;

import org.springframework.data.annotation.Id;

import java.util.HashSet;
import java.util.Set;

public class Category {

    @Id
    private Long id;

    private CategoryType categoryType;
    private Set<Dish> dishes;

    public Category(CategoryType categoryType) {
        this.categoryType = categoryType;
        this.dishes = new HashSet<>();
    }

    public CategoryType getTitle() {
        return categoryType;
    }

    public Set<Dish> getDishes() {
        return dishes;
    }

}
