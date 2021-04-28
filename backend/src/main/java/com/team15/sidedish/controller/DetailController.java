package com.team15.sidedish.controller;

import com.team15.sidedish.dto.DetailDTO;
import com.team15.sidedish.service.DetailService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DetailController {

    private final DetailService detailService;

    public DetailController(DetailService detailService) {
        this.detailService = detailService;
    }

    @GetMapping("/detail/{hash}")
    public DetailDTO showDetailInfo(@PathVariable String hash) {
        return detailService.showDetailInfo(hash);
    }
}
