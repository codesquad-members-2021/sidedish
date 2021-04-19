package develop.baminchan.entity;

import java.util.ArrayList;
import java.util.List;

public class Category {
    private String categoryId;
    private String name;
    private List<Banchan> banchans = new ArrayList<>();

    public Category(String categoryId, String name, List<Banchan> banchans) {
        this.categoryId = categoryId;
        this.name = name;
        this.banchans = banchans;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public String getName() {
        return name;
    }

    public List<Banchan> getBanchans() {
        return banchans;
    }
}
