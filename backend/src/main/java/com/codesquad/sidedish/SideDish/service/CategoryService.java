package com.codesquad.sidedish.SideDish.service;

import com.codesquad.sidedish.SideDish.dto.CategoryDto;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Service
public class CategoryService {
    public List<CategoryDto> getList() {
        return Arrays.asList(
                new CategoryDto(1, "메인", "/main"),
                new CategoryDto(2, "국", "/soup"),
                new CategoryDto(3, "반찬", "side")
        );
    }
}
