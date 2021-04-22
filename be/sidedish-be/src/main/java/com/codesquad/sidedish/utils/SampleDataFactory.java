package com.codesquad.sidedish.utils;

import com.codesquad.sidedish.web.sidedish.ItemDTO;
import com.codesquad.sidedish.web.sidedish.SidedishDTO;
import org.springframework.core.io.ClassPathResource;

import java.io.IOException;
import java.util.List;

public class SampleDataFactory {
    public static List<SidedishDTO> createBestMenus() {
        try {
            return SidedishDTO.listFrom(new ClassPathResource("sample-data/best-sidedishes.json").getFile());
        } catch (IOException e) {
            throw new IllegalStateException("경로가 올바르지 않습니다.");
        }
    }

    public static List<ItemDTO> createMainMenus() {
        try {
            return ItemDTO.listForm(new ClassPathResource("sample-data/main-sidedishes.json").getFile());
        } catch (IOException e) {
            throw new IllegalStateException("경로가 올바르지 않습니다.");
        }
    }
}
