package com.codesquad.sidedish.SideDish.service;

import com.codesquad.sidedish.SideDish.domain.*;
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
    private final ImageRepository imageRepository;
    private final DeliveryRepository deliveryRepository;
    private final SaleRepository saleRepository;

    public DishService(DishRepository dishRepository, ImageRepository imageRepository, DeliveryRepository deliveryRepository, SaleRepository saleRepository) {
        this.dishRepository = dishRepository;
        this.imageRepository = imageRepository;
        this.deliveryRepository = deliveryRepository;
        this.saleRepository = saleRepository;
    }

    public List<DishDto> getList(Long categoryId) {
        return dishRepository.findAllByCategoryId(categoryId)
                .stream().map(this::convert)
                .collect(Collectors.toList());
    }

    // FIXME: N+1 문제를 해결해야한다.
    private DishDto convert(Dish dish) {
        String detailHash = dish.getDetailHash();
        List<Delivery> deliveries = deliveryRepository.findAllByDish(detailHash);
        List<Sale> sales = saleRepository.findAllByDish(detailHash);
        return DishDto.from(dish, deliveries, sales);
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
        Dish dish = dishRepository.findByDetailHash(detailHash);
        List<Image> thumbImages = imageRepository.findThumbImagesByDish(detailHash);
        List<Image> detailImages = imageRepository.findDetailImagesByDish(detailHash);
        return DishDetailDto.from(dish, thumbImages, detailImages);
    }

    private Dish getDish(String detailHash) {
        Dish dish = dishRepository.findByDetailHash(detailHash);
        return Optional.ofNullable(dish)
                .orElseThrow(() -> new DishNotFoundException(detailHash));
    }
}
