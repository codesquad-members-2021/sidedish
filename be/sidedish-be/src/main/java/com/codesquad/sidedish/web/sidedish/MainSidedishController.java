package com.codesquad.sidedish.web.sidedish;

import com.codesquad.sidedish.utils.SampleDataFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class MainSidedishController {
    @GetMapping("/main")
    public List<ItemDTO> readMainSidedishes() {
        return SampleDataFactory.createMainSidedishes();
    }
}
