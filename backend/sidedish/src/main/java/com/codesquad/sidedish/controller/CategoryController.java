package com.codesquad.sidedish.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CategoryController {

    @GetMapping("/main")
    public String getMain() {
        return null;
    }


    @GetMapping("/soup")
    public String getSoup() {
        return null;
    }

    @GetMapping("/side")
    public String getSide() {
        return null;
    }

}
