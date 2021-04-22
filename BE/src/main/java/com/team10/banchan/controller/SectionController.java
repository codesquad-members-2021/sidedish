package com.team10.banchan.controller;

import com.team10.banchan.dto.ItemSummary;
import com.team10.banchan.response.ResponseBody;
import com.team10.banchan.service.SectionService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/{sectionName}")
public class SectionController {

    private final SectionService sectionService;

    public SectionController(SectionService sectionService) {
        this.sectionService = sectionService;
    }

    @GetMapping
    public ResponseBody<List<ItemSummary>> sectionItems(@PathVariable("sectionName") String sectionName) {
        return ResponseBody.ok(sectionService.itemSummaries(sectionName));
    }

    @GetMapping("/{itemId}")
    public ItemSummary sectionItem(@PathVariable("sectionName") String sectionName,
                                   @PathVariable("itemId") Long itemId) {
        return sectionService.itemSummary(sectionName, itemId);
    }

}
