package com.codesquad.sidedish.web.sidedish.controller;

import com.codesquad.sidedish.utils.SampleDataFactory;
import com.codesquad.sidedish.web.sidedish.DTO.DetailDTO;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DetailController {
    @GetMapping("/detail/{hash}")
    public DetailDTO readOne(@PathVariable String hash) {
        return SampleDataFactory.createDetails().get(hash);
    }
}
