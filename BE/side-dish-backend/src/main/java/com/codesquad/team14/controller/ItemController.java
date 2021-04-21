package com.codesquad.team14.controller;

import com.codesquad.team14.domain.Item;
import com.codesquad.team14.dto.ItemDto;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ItemController {

    @GetMapping("/best")
    public ItemDto bestLists() {
        return (new ItemDto("tempp"));
    }

}
