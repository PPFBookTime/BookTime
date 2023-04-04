package com.Booktime.BookTime.controller;

import com.Booktime.BookTime.controller.dto.LivresDTO;
import com.Booktime.BookTime.modele.Livres;
import com.Booktime.BookTime.service.LivresService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/livres")
@AllArgsConstructor
public class LivresController {

    private final LivresService livresService;

    @PostMapping("/create")
    public Livres create(Livres livres){
        return  livresService.creer(livres);
    }

    @GetMapping("/read")
    public List<LivresDTO> read() {
        return livresService.lire()
                .stream()
                .map(livres -> new LivresDTO(livres.getId(), livres.getTitre(), livres.getNumero_de_tome(), livres.getSeries().getNom(), livres.getImages()))
                .toList();
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
