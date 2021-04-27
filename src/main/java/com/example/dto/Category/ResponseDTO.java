package com.example.dto.Category;

import com.example.domain.Category;
import com.example.domain.Item;
import com.example.dto.ItemInfoDto;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.springframework.http.HttpStatus;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ResponseDTO {

    @JsonProperty("statusCode")
    private HttpStatus statusCode;


    @JsonProperty("body")
    private List<ItemInfoDto> items = new ArrayList<>();

    public ResponseDTO(HttpStatus statusCode, List<ItemInfoDto> items) {
        this.statusCode = statusCode;
        this.items = items;
    }

    public List<ItemInfoDto> getItems() {
        return items;
    }

    public int getStatusCode() {
        return statusCode.value();
    }


    public static ResponseDTO of(Category category){
        List<Item> items = new ArrayList<>(category.getItems().values());
        List<ItemInfoDto> itemInfoDtos = items.stream().map(ItemInfoDto::of).collect(Collectors.toList());

        return new ResponseDTO(HttpStatus.ACCEPTED, itemInfoDtos);
    }

}
