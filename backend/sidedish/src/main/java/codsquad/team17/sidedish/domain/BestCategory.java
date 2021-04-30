package codsquad.team17.sidedish.domain;

import org.springframework.data.annotation.Id;

public class BestCategory {

    @Id
    private Long bestCategoryId;

    private String bestCategoryName;

    public BestCategory() {
    }

    public BestCategory(Long bestCategoryId, String bestCategoryName) {
        this.bestCategoryId = bestCategoryId;
        this.bestCategoryName = bestCategoryName;
    }

    public Long getBestCategoryId() {
        return bestCategoryId;
    }

    public String getBestCategoryName() {
        return bestCategoryName;
    }
}
