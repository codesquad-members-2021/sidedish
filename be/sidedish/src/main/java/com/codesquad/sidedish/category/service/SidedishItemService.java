package com.codesquad.sidedish.category.service;

import com.codesquad.sidedish.category.domain.SidedishCategory;
import com.codesquad.sidedish.category.domain.SidedishCategoryRepository;
import com.codesquad.sidedish.category.domain.SidedishItem;
import com.codesquad.sidedish.category.domain.dto.*;
import com.codesquad.sidedish.category.exception.CategoryNotFoundException;
import com.codesquad.sidedish.event.domain.SidedishEvent;
import com.codesquad.sidedish.event.service.EventFinder;
import com.codesquad.sidedish.image.domain.SidedishImage;
import com.codesquad.sidedish.image.domain.SidedishImageTypeEnum;
import com.codesquad.sidedish.image.service.ImageFinder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Service
@Transactional(readOnly = true)
public class SidedishItemService {

    private final SidedishCategoryRepository sidedishCategoryRepository;
    private final ImageFinder imageFinder;
    private final EventFinder eventFinder;


    public SidedishItemService(SidedishCategoryRepository sidedishCategoryRepository,
                               ImageFinder imageFinder, EventFinder eventFinder) {
        this.sidedishCategoryRepository = sidedishCategoryRepository;
        this.imageFinder = imageFinder;
        this.eventFinder = eventFinder;
    }

    public PreviewListDtoWrapper showPreviewItems(String categoryName) {
        SidedishCategory category = findByCategoryName(categoryName);
        List<SidedishItem> items = category.getSidedishItemList();

        List<SidedishItemPreviewDTO> itemDTOs = new ArrayList<>();
        for (SidedishItem item : items) {
            Set<SidedishEvent> eventSet = eventFinder.findEvents(item);
            SidedishImage thumbnailImage = imageFinder.findThumbnailImage(item);
            itemDTOs.add(new SidedishItemPreviewDTO(item, eventSet, thumbnailImage));
        }
        return new PreviewListDtoWrapper(itemDTOs);
    }

    public DetailItemDtoWrapper showDetailItem(String categoryName, Long itemId) {
        SidedishCategory sidedishCategory = findByCategoryName(categoryName);
        SidedishItem sidedishItem = sidedishCategory.findItem(itemId);

        Set<SidedishEvent> eventSet = eventFinder.findEvents(sidedishItem);

        List<SidedishImage> detailImages = imageFinder.findImagesByType(sidedishItem, SidedishImageTypeEnum.DETAIL);
        List<SidedishImage> descriptionImages = imageFinder.findImagesByType(sidedishItem, SidedishImageTypeEnum.DESCRIPTION);

        List<String> detailImageUrls = SidedishImage.imageListToImageUrlList(detailImages);
        List<String> descriptionImageUrls = SidedishImage.imageListToImageUrlList(descriptionImages);

        SidedishDetailItemDTO sidedishDetailItemDTO = new SidedishDetailItemDTO(sidedishItem, eventSet, detailImageUrls, descriptionImageUrls);
        return new DetailItemDtoWrapper(sidedishDetailItemDTO);
    }

    @Transactional
    public void order(String categoryName, Long id, OrderDTO orderDTO) {
        SidedishCategory category = findByCategoryName(categoryName);
        SidedishItem item = category.findItem(id);

        item.order(orderDTO.getQuantity());
        sidedishCategoryRepository.save(category);
    }

    private SidedishCategory findByCategoryName(String categoryName) {
        return sidedishCategoryRepository.findByCategoryName(categoryName).orElseThrow(CategoryNotFoundException::new);
    }

}
