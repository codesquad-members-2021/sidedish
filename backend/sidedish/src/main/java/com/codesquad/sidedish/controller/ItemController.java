package com.codesquad.sidedish.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/detail/{hash}")
public class ItemController {

    @GetMapping
    public String getDetailItem() {
        return null;
    }
}
