package codsquad.team17.sidedish.dto;

import java.util.List;

public class BestCategoryDto {
    private Long bestCategoryId;
    private String bestCategoryName;
    private List<ItemDto> items;

    private BestCategoryDto(){

    }

    public BestCategoryDto(Long bestCategoryId, String bestCategoryName, List<ItemDto> items) {
        this.bestCategoryId = bestCategoryId;
        this.bestCategoryName = bestCategoryName;
        this.items = items;
    }

    public Long getBestCategoryId() {
        return bestCategoryId;
    }

    public String getBestCategoryName() {
        return bestCategoryName;
    }

    public List<ItemDto> getItems() {
        return items;
    }
}
