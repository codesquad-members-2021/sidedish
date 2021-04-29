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
        Dish dish = dishRepository.findByDetailHash(detailHash);
        boolean refreshable = dish.refreshable(lastUpdated);
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
