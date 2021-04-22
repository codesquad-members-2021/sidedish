package codsquad.team17.sidedish.domain;

import org.springframework.data.annotation.Id;

public class DishCategory {

    @Id
    private Long dishCategoryId;
    private String dishCategoryName;

    public DishCategory() {
    }

    public DishCategory(Long dishCategoryId, String dishCategoryName) {
        this.dishCategoryId = dishCategoryId;
        this.dishCategoryName = dishCategoryName;
    }

    public Long getDishCategoryId() {
        return dishCategoryId;
    }

    public String getDishCategoryName() {
        return dishCategoryName;
    }
}
