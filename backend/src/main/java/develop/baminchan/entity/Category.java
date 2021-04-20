package develop.baminchan.entity;

import org.springframework.data.annotation.Id;

import java.util.ArrayList;
import java.util.List;

public class Category {
    @Id
    private int id;

    private int category_id;
    private String name;
    private List<Banchan> items = new ArrayList<>();

    public Category(int id, int category_id, String name, List<Banchan> items) {
        this.id = id;
        this.category_id = category_id;
        this.name = name;
        this.items = items;
    }

    public int getId() {
        return id;
    }

    public int getCategory_id() {
        return category_id;
    }

    public String getName() {
        return name;
    }

    public List<Banchan> getItems() {
        return items;
    }
}
