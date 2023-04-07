package com.Booktime.BookTime.controller;

import com.Booktime.BookTime.controller.dto.LivresDTO;
import com.Booktime.BookTime.controller.dto.SeriesMinimalDTO;
import com.Booktime.BookTime.modele.Livres;
import com.Booktime.BookTime.service.LivresService;
import com.Booktime.BookTime.service.SeriesService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;

@RestController
@RequestMapping("/livres")
@AllArgsConstructor
public class LivresController {

    private final LivresService livresService;
    private final SeriesService seriesService;

    @PostMapping("/create")
    public LivresDTO create(@RequestBody LivresDTO livresDTO){
        Livres livres = new Livres(livresDTO.getId(),
                livresDTO.getTitre(),
                livresDTO.getNbTome(),
                seriesService.lireById(livresDTO.getSerie().getId()),
                livresDTO.getImage(),
                livresDTO.getDescription(),
                Collections.emptyList());
        return toDto(livresService.creer(livres));
    }

    @GetMapping("/read")
    public List<LivresDTO> read() {
        return livresService.lire()
                .stream()
                .map(this::toDto)
                .toList();
    }

    private LivresDTO toDto(Livres livres) {
        return new LivresDTO(livres.getId(), livres.getTitre(), livres.getNumero_de_tome(),
                new SeriesMinimalDTO(livres.getSeries().getId(), livres.getSeries().getNom()),
                livres.getImages(), livres.getDescription());
    }

    @PutMapping("/update/{id}")
    public Livres update(@PathVariable Long id, @RequestBody Livres livres) {
        return livresService.modifier(id,livres);
    }

    @DeleteMapping("/delete/{id}")
    public String delete(@PathVariable Long id) {
        return livresService.supprimer(id);
    }
}
