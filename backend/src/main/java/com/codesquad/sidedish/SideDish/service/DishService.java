package com.codesquad.sidedish.SideDish.service;

import com.codesquad.sidedish.SideDish.domain.Dish;
import com.codesquad.sidedish.SideDish.domain.DishRepository;
import com.codesquad.sidedish.SideDish.dto.DishDto;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class DishService {
    private final DishRepository dishRepository;

    public DishService(DishRepository dishRepository) {
        this.dishRepository = dishRepository;
    }

    public List<DishDto> getList(Long categoryId) {
        List<DishDto> dishDtos = new ArrayList<>();
        for (Dish dish : dishRepository.findAll()) {
            dishDtos.add(DishDto.from(dish));
        }
        return dishDtos;
    }


    //    public RefreshDto getDetailRefreshable(String detailHash, long lastUpdated) {
//        Dish dish = dishRepository.findByDetailHash(detailHash);
//        boolean refreshable = dish.refreshable(lastUpdated);
//        return new RefreshDto(refreshable);
//    }
//
//    public QuantityDto getDetailQuantity(String detailHash) {
//        return QuantityDto.from(getDish(detailHash));
//    }
//
//    public DishDetailDto getDetail(String detailHash) {
//        Dish dish = dishRepository.findByDetailHash(detailHash);
//        List<Image> tumb = imageRepository.findImagesByType("thum");
//        List<Image> detail = imageRepository.findImagesByType("detail");
//        DishDetailDto dishDetailDto = new DishDetailDto(dish, tumb, detail);
//        return dishDetailDto;
//    }
////

//    private Dish getDish(String detailHash) {
//        Dish dish = dishRepository.findByDetailHash(detailHash);
//        return Optional.ofNullable(dish)
//                .orElseThrow(() -> new DishNotFoundException(detailHash));
//    }

//    public List<DishDto> getList(Long categoryId) {
//        return dishRepository.findAllByCategoryId(categoryId);
//    }

}
