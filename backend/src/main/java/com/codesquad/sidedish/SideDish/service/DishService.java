package com.codesquad.sidedish.SideDish.service;

import com.codesquad.sidedish.SideDish.domain.Dish;
import com.codesquad.sidedish.SideDish.domain.DishMockRepository;
import com.codesquad.sidedish.SideDish.domain.DishRepository;
import com.codesquad.sidedish.SideDish.dto.DishDetailDto;
import com.codesquad.sidedish.SideDish.dto.DishDto;
import com.codesquad.sidedish.SideDish.dto.QuantityDto;
import com.codesquad.sidedish.SideDish.dto.RefreshDto;
import com.codesquad.sidedish.SideDish.exception.DishNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class DishService {
    private final DishRepository dishRepository;

    public DishService(DishRepository dishRepository) {
        this.dishRepository = dishRepository;
    }

    public DishService() {
        this(new DishMockRepository());
    }

    public RefreshDto getDetailRefreshable(String detailHash, long lastUpdated) {
        // NOTE: 프론트 요구사항 귀찮다. 그냥 하드코딩으로 땜빵하자;
        // NOTE: 자료형식은 yyMMddhhmm
        boolean refreshable = 2104220639 > lastUpdated;
        return new RefreshDto(refreshable);
    }

    public QuantityDto getDetailQuantity(String detailHash) {
        return QuantityDto.from(getDish(detailHash));
    }

    public DishDetailDto getDetail(String detailHash) {
        return DishDetailDto.from(getDish(detailHash));
    }

    public List<DishDto> getList(long categoryId) {
        return dishRepository.findAllByCategoryId(categoryId)
                .stream().map(DishDto::from)
                .collect(Collectors.toList());
    }

    private Dish getDish(String detailHash) {
        Dish dish = dishRepository.findByDetailHash(detailHash);
        return Optional.ofNullable(dish)
                .orElseThrow(() -> new DishNotFoundException(detailHash));
    }
}
