package codsquad.team17.sidedish.dto;

import codsquad.team17.sidedish.domain.BestCategory;

import java.util.List;

public class BestCategoryDto {
    private Long bestCategoryId;
    private String bestCategoryName;
    private List<ItemDto> items;

    private BestCategoryDto(){

    }

    public BestCategoryDto(BestCategory entity, List<ItemDto> items) {
        this.bestCategoryId = entity.getBestCategoryId();
        this.bestCategoryName = entity.getBestCategoryName();
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
