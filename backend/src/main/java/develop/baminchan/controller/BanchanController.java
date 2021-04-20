package develop.baminchan.controller;

import develop.baminchan.entity.Banchan;
import develop.baminchan.repository.BanchanRepository;
import develop.baminchan.service.BanchanService;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
public class BanchanController {

    private BanchanService banchanService;

    public BanchanController(BanchanService banchanService) {
        this.banchanService = banchanService;
    }

    @GetMapping("/main/{detail_hash}")
    public Banchan readOneMain(@PathVariable String detail_hash) {
       Banchan banchan = banchanService.findBanchanByDetailHash(detail_hash);
        return banchan;
    }

//    @GetMapping("/soup/{detail_hash}")
//    public Optional<Banchan> readOneSoup(@PathVariable String detail_hash) {
//        Optional<Banchan> banchan = banchanService.findBanchanByDetailHash(detail_hash);
//        return banchan;
//    }
//
//    @GetMapping("/side/{detail_hash")
//    public Optional<Banchan> readOneSide(@PathVariable String detail_hash) {
//        Optional<Banchan> banchan = banchanService.findBanchanByDetailHash(detail_hash);
//        return banchan;
//    }

    @PostMapping("/create")
    public String create(@RequestBody Banchan banchan) {
        banchanService.createBanchan(banchan);
        return "success";
    }
}
