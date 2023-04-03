package com.Booktime.BookTime.controller;

import com.Booktime.BookTime.controller.dto.SeriesDTO;
import com.Booktime.BookTime.modele.Series;
import com.Booktime.BookTime.service.SeriesService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/series")
@AllArgsConstructor
public class SeriesController {

    private final SeriesService seriesService;

    @PostMapping("/create")
    public Series create(@RequestBody Series series) {
        return seriesService.creer(series);
    }

    @GetMapping("/read")
    public List<SeriesDTO> read() {
        return seriesService.lire()
                .stream()
                .map(series -> new SeriesDTO(series.getId(),series.getNom(), series.getEditeurs().getNom()))
                .toList();
    }

    @PutMapping("/update/{id}")
    public Series update(@PathVariable Long id, @RequestBody Series series) {
        return seriesService.modifier(id, series);
    }

    @DeleteMapping("/delete/{id}")
    public String delete(@PathVariable Long id) {
        return seriesService.supprimer(id);
    }
}
