package com.codesquad.sidedish.category.controller;

import com.codesquad.sidedish.category.domain.dto.DetailItemDtoWrapper;
import com.codesquad.sidedish.category.domain.dto.OrderDTO;
import com.codesquad.sidedish.category.domain.dto.PreviewListDtoWrapper;
import com.codesquad.sidedish.category.service.SidedishItemService;
import com.codesquad.sidedish.util.JwtUtil;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.StringTokenizer;

@RestController
@RequestMapping("/{category}")
public class SidedishCategoryController {

    private final SidedishItemService itemService;

    public SidedishCategoryController(SidedishItemService itemService) {
        this.itemService = itemService;
    }

    @GetMapping
    public ResponseEntity<PreviewListDtoWrapper> previewItemList(@PathVariable String category) {
        PreviewListDtoWrapper previewListDtoWrapper = itemService.showPreviewItems(category);
        return new ResponseEntity<>(previewListDtoWrapper, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<DetailItemDtoWrapper> detailItem(@PathVariable String category, @PathVariable Long id) {
        DetailItemDtoWrapper detailDTO = itemService.showDetailItem(category, id);
        return new ResponseEntity<>(detailDTO, HttpStatus.OK);
    }

    @PostMapping("/{id}")
    @ResponseStatus(HttpStatus.CREATED)
    public void orderItem(@PathVariable String category, @PathVariable Long id, @RequestBody OrderDTO orderDTO, HttpServletRequest request) {
        String authorizationValue = request.getHeader("Authorization");
        StringTokenizer stringTokenizer = new StringTokenizer(authorizationValue);

        String tokenType = stringTokenizer.nextToken();
        String jwtToken = stringTokenizer.nextToken();

        if(JwtUtil.validateToken(jwtToken)) {
            System.out.println("ok");
        }else {
            System.out.println("not ok");
            return;
        }
        itemService.order(category, id, orderDTO);
    }
}
