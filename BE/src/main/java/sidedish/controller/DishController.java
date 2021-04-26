package sidedish.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import sidedish.service.DishService;
import sidedish.service.dto.DetailDishDTO;
import sidedish.service.dto.RequestDishDTO;

import java.util.List;

@RestController
@RequestMapping("/banchan-code")
public class DishController {

    private final DishService dishService;

    public DishController(DishService dishService) {
        this.dishService = dishService;
    }

    @GetMapping("/{title}/{id}")
    public ResponseEntity<DetailDishDTO> detailPage(@PathVariable String title, @PathVariable Long id) {
        DetailDishDTO detailDishDTO = dishService.convertToDetailDishDTO(title, id);
        return ResponseEntity.ok(detailDishDTO);
    }

    @PostMapping("/dish")
    public void createDish(@RequestBody List<RequestDishDTO> dishDTOs) {
        dishService.saveDishes(dishDTOs);
    }
}
