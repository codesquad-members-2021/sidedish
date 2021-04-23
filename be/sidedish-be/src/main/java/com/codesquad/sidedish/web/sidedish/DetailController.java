package com.codesquad.sidedish.web.sidedish;

import com.codesquad.sidedish.utils.SampleDataFactory;
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
