package com.codesquad.sidedish.category.service;

import com.codesquad.sidedish.category.domain.SidedishCategory;
import com.codesquad.sidedish.category.domain.SidedishCategoryRepository;
import com.codesquad.sidedish.category.domain.SidedishItem;
import com.codesquad.sidedish.category.domain.dto.*;
import com.codesquad.sidedish.category.exception.CategoryNotFoundException;
import com.codesquad.sidedish.event.domain.SidedishEvent;
import com.codesquad.sidedish.event.domain.SidedishEventItem;
import com.codesquad.sidedish.event.domain.SidedishEventRepository;
import com.codesquad.sidedish.event.domain.dto.SidedishEventDTO;
import com.codesquad.sidedish.event.exception.EventNotFoundException;
import com.codesquad.sidedish.image.domain.SidedishImage;
import com.codesquad.sidedish.image.domain.SidedishImageRepository;
import com.codesquad.sidedish.image.domain.SidedishImageTypeEnum;
import com.codesquad.sidedish.image.domain.SidedishItemImage;
import com.codesquad.sidedish.image.exception.ImageItemNotFoundException;
import com.codesquad.sidedish.image.exception.ImageNotFoundException;
import com.codesquad.sidedish.util.DefaultImageUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;
import java.util.stream.Collectors;

@Service
@Transactional(readOnly = true)
public class SidedishItemService {

    private final SidedishCategoryRepository sidedishCategoryRepository;
    private final SidedishEventRepository sidedishEventRepository;
    private final SidedishImageRepository sidedishImageRepository;

    public SidedishItemService(SidedishCategoryRepository sidedishCategoryRepository,
                               SidedishEventRepository sidedishEventRepository,
                               SidedishImageRepository sidedishImageRepository) {
        this.sidedishCategoryRepository = sidedishCategoryRepository;
        this.sidedishEventRepository = sidedishEventRepository;
        this.sidedishImageRepository = sidedishImageRepository;
    }

    public PreviewListDtoWrapper showItemList(String categoryName) {
        SidedishCategory category = sidedishCategoryRepository.findByCategoryName(categoryName).orElseThrow(CategoryNotFoundException::new);
        List<SidedishItem> items = category.getSidedishItemList();

        List<SidedishItemPreviewDTO> itemDTOs = new ArrayList<>();
        Map<Long, SidedishEvent> eventMap = new HashMap<>();

        for (SidedishItem item : items) {
            Set<SidedishEvent> eventSet = createEventSet(item, eventMap);
            int salePrice = item.calculateSalePrice(eventSet);
            Set<SidedishEventDTO> eventDtoSet = eventSetToDtoSet(eventSet);
            SidedishImage thumbnailImage = findThumbnailImage(item);
            itemDTOs.add(new SidedishItemPreviewDTO(item, salePrice, eventDtoSet, thumbnailImage));
        }
        return new PreviewListDtoWrapper(itemDTOs);
    }

    public DetailItemDtoWrapper showItem(String categoryName, Long itemId) {
        SidedishCategory sidedishCategory = sidedishCategoryRepository.findByCategoryName(categoryName).orElseThrow(CategoryNotFoundException::new);
        SidedishItem sidedishItem = sidedishCategory.findItem(itemId);

        Set<SidedishEvent> eventSet = createEventSet(sidedishItem);
        Set<SidedishEventDTO> eventDtoSet = eventSetToDtoSet(eventSet);
        int salePrice = sidedishItem.calculateSalePrice(eventSet);
        List<SidedishImage> detailImages = findImagesByType(sidedishItem, SidedishImageTypeEnum.DETAIL);
        List<SidedishImage> descriptionImages = findImagesByType(sidedishItem, SidedishImageTypeEnum.DESCRIPTION);
        SidedishDetailItemDTO sidedishDetailItemDTO = new SidedishDetailItemDTO(sidedishItem, salePrice, eventDtoSet, detailImages, descriptionImages);
        return new DetailItemDtoWrapper(sidedishDetailItemDTO);
    }

    private SidedishImage findThumbnailImage(SidedishItem item) {
        try {
            SidedishItemImage sidedishItemImage = item.getSidedishItemImages().stream()
                    .filter(SidedishItemImage::isThumbnailImage)
                    .findFirst()
                    .orElseThrow(ImageItemNotFoundException::new);
            return sidedishImageRepository.findById(sidedishItemImage.getSidedishImage()).orElseThrow(ImageNotFoundException::new);
        } catch (ImageItemNotFoundException e) {
            return DefaultImageUtil.getNotFoundImage();
        }
    }

    private List<SidedishImage> findImagesByType(SidedishItem item, SidedishImageTypeEnum imageTypeEnum) {
        List<Long> itemImageList = item.getSidedishItemImages().stream()
                .filter(image -> image.isSameType(imageTypeEnum))
                .map(SidedishItemImage::getSidedishImage)
                .collect(Collectors.toList());
        return sidedishImageRepository.findAllById(itemImageList);
    }

    private Set<SidedishEvent> createEventSet(SidedishItem item, Map<Long, SidedishEvent> eventMap) {
        for (SidedishEventItem eventItem : item.getEventItems()) {
            Long eventId = eventItem.getSidedishEvent();
            if (!eventMap.containsKey(eventId)) {
                eventMap.put(eventId, sidedishEventRepository.findById(eventId).orElseThrow(EventNotFoundException::new));
            }
        }
        return item.getEventItems().stream()
                .map(eventItem -> eventMap.get(eventItem.getSidedishEvent()))
                .collect(Collectors.toSet());
    }

    private Set<SidedishEvent> createEventSet(SidedishItem item) {
        Set<SidedishEvent> eventSet = new HashSet<>();
        for (SidedishEventItem eventItem : item.getEventItems()) {
            Long eventId = eventItem.getSidedishEvent();
            SidedishEvent sidedishEvent = sidedishEventRepository.findById(eventId).orElseThrow(EventNotFoundException::new);
            eventSet.add(sidedishEvent);
        }
        return eventSet;
    }

    private Set<SidedishEventDTO> eventSetToDtoSet(Set<SidedishEvent> eventSet) {
        return eventSet.stream().map(SidedishEventDTO::new)
                .collect(Collectors.toSet());
    }

    @Transactional
    public void order(String categoryName, Long id, OrderDTO orderDTO) {
        SidedishCategory category = sidedishCategoryRepository.findByCategoryName(categoryName).orElseThrow(CategoryNotFoundException::new);
        SidedishItem item = category.findItem(id);
        item.order(orderDTO);
        sidedishCategoryRepository.save(category);
    }
}
