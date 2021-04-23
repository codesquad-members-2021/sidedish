package develop.baminchan.dto;

import develop.baminchan.entity.Category;
import org.springframework.data.annotation.Id;

import java.util.ArrayList;
import java.util.List;

public class CategoryDto {
    @Id
    private int id;

    private String category_id;
    private String name;

    private List<BanchanDto> items = new ArrayList<>();

    public CategoryDto(String category_id, String name) {
        this.category_id = category_id;
        this.name = name;
    }

    public CategoryDto(Category category, List<BanchanDto> banchanDtoList) {
        this.category_id = category.getCategory_id();
        this.name = category.getName();
        this.items = banchanDtoList;
    }

    // Entity -> DTO
    public static CategoryDto of(Category category, List<BanchanDto> banchanDtoList) {
        return new CategoryDto(category, banchanDtoList);
    }

    public String getCategory_id() {
        return category_id;
    }

    public String getName() {
        return name;
    }

    public List<BanchanDto> getItems() {
        return items;
    }
}
