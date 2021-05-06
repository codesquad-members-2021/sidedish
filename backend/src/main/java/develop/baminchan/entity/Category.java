package develop.baminchan.entity;

import org.springframework.data.annotation.Id;

public class Category {
    @Id
    private int id;

    private String category_id;
    private String name;

    public Category(String category_id, String name) {
        this.category_id = category_id;
        this.name = name;
    }

    public String getCategory_id() {
        return category_id;
    }

    public String getName() {
        return name;
    }
}
