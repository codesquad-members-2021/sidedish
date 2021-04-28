package com.codesquad.sidedish.web.sidedish.controller;

import com.codesquad.sidedish.utils.SampleDataFactory;
import com.codesquad.sidedish.web.sidedish.DTO.ItemDTO;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class SoupSidedishController {
    @GetMapping("/soup")
    public List<ItemDTO> readSoupSidedishes() {
        return SampleDataFactory.createSoupSidedishes();
    }
}
