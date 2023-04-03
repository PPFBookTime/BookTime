package com.Booktime.BookTime.controller;

import com.Booktime.BookTime.controller.dto.EditeursDTO;
import com.Booktime.BookTime.modele.Editeurs;
import com.Booktime.BookTime.modele.Series;
import com.Booktime.BookTime.service.EditeursService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/editeurs")
@AllArgsConstructor
public class EditeursController {

    private final EditeursService editeursService;

    @PostMapping("/create")
    public Editeurs create(Editeurs editeur){
        return editeursService.creer(editeur);
    }

    @GetMapping("/read")
    public List<EditeursDTO> read() {
        return editeursService.lire()
                .stream()
                .map(editeurs -> new EditeursDTO(editeurs.getId(),editeurs.getNom(),editeurs.getSeries()
                        .stream()
                        .map(Series::getNom).toList()))
                .toList();
    }

    @PutMapping("/update/{id}")
    public Editeurs update(@PathVariable Long id, @RequestBody Editeurs editeur) {
        return editeursService.modifier(id,editeur);
    }

    @DeleteMapping("/delete/{id}")
    public String delete(@PathVariable Long id) {
        return  editeursService.supprimer(id);
    }
}
