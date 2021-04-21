package com.codesquad.sidedish.category.service;

import com.codesquad.sidedish.category.domain.CategoryRepository;
import com.codesquad.sidedish.category.domain.SidedishCategory;
import com.codesquad.sidedish.category.domain.SidedishItem;
import com.codesquad.sidedish.category.domain.SidedishItemDTO;
import com.codesquad.sidedish.category.exception.EmptyItemException;
import com.codesquad.sidedish.event.domain.SidedishEvent;
import com.codesquad.sidedish.event.domain.SidedishEventDTO;
import com.codesquad.sidedish.event.domain.SidedishEventItem;
import com.codesquad.sidedish.event.domain.SidedishEventRepository;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class SidedishItemService {

    private final CategoryRepository categoryRepository;
    private final SidedishEventRepository sidedishEventRepository;

    public SidedishItemService(CategoryRepository categoryRepository, SidedishEventRepository sidedishEventRepository) {
        this.categoryRepository = categoryRepository;
        this.sidedishEventRepository = sidedishEventRepository;
    }

    public List<SidedishItemDTO> showItemList(String categoryName){

        SidedishCategory category = categoryRepository.findByCategoryName(categoryName);
        List<SidedishItem> items = category.getSidedishItemList();

        List<SidedishItemDTO> itemDTOs = new ArrayList<>();
        Map<Long, SidedishEvent> events = new HashMap<>();

        for(SidedishItem item : items){
            for(SidedishEventItem eventItem : item.getEventItems()){
                Long eventId = eventItem.getSidedishEvent();
                if(!events.containsKey(eventId)){
                    events.put(eventId,sidedishEventRepository.findById(eventId).orElseThrow(EmptyItemException::new));
                }
            }

            Set<SidedishEventDTO> eventSet = item.getEventItems().stream()
                    .map(eventItem -> events.get(eventItem.getSidedishEvent()))
                    .map(SidedishEventDTO::new)
                    .collect(Collectors.toSet());

            itemDTOs.add(new SidedishItemDTO(item, eventSet));

        }
        return itemDTOs;
    }


}
