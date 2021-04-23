package com.codesquad.sidedish.web.sidedish.controller;

import com.codesquad.sidedish.utils.SampleDataFactory;
import com.codesquad.sidedish.web.sidedish.DTO.SidedishDTO;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class BestSidedishController {
    @GetMapping("/best")
    public List<SidedishDTO> readBestSidedishes() {
        return SampleDataFactory.createBestSidedishes();
    }
}
