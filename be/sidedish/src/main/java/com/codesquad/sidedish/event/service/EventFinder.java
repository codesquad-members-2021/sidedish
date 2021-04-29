package com.codesquad.sidedish.event.service;

import com.codesquad.sidedish.category.domain.SidedishItem;
import com.codesquad.sidedish.event.domain.SidedishEvent;
import com.codesquad.sidedish.event.domain.SidedishEventItem;
import com.codesquad.sidedish.event.domain.SidedishEventRepository;
import com.codesquad.sidedish.event.exception.EventNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Set;
import java.util.stream.Collectors;

@Service
public class EventFinder {

    private final SidedishEventRepository sidedishEventRepository;

    public EventFinder(SidedishEventRepository sidedishEventRepository) {
        this.sidedishEventRepository = sidedishEventRepository;
    }

    public Set<SidedishEvent> findEvents(SidedishItem item) {
        Set<SidedishEventItem> eventItems = item.getEventItems();
        return eventItems.stream()
                .map(SidedishEventItem::getSidedishEvent)
                .map(id -> findById(id))
                .collect(Collectors.toSet());
    }

    private SidedishEvent findById(Long id) {
        return sidedishEventRepository.findById(id).orElseThrow(EventNotFoundException::new);
    }

}
