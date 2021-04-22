package develop.baminchan.dto;

import develop.baminchan.entity.Category;
import org.springframework.data.annotation.Id;

public class CategoryDto {
    @Id
    private int id;

    private String category_id;
    private String name;

    public CategoryDto(String category_id, String name) {
        this.category_id = category_id;
        this.name = name;
    }

    public CategoryDto(Category category) {
        this.category_id = category.getCategory_id();
        this.name = category.getName();
    }

    // Entity -> DTO
    public static CategoryDto of(Category category) {
        return new CategoryDto(category);
    }

    public String getCategory_id() {
        return category_id;
    }

    public String getName() {
        return name;
    }
}
