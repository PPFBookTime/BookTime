package com.Booktime.BookTime.controller;

import com.Booktime.BookTime.controller.dto.BiblioDTO;
import com.Booktime.BookTime.controller.dto.SeriesDTO;
import com.Booktime.BookTime.modele.Bibliotheques;
import com.Booktime.BookTime.service.BiblioService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/biblio")
@AllArgsConstructor
public class BiblioController {

    private  final BiblioService biblioService;

    @PostMapping("/create")
    public Bibliotheques create(@RequestBody Bibliotheques bibliotheques){
        return biblioService.creer(bibliotheques);
    }

    @GetMapping("/read")
    public List<BiblioDTO> read() {
        return biblioService.lire()
                .stream()
                .map(bibliotheques -> new BiblioDTO(bibliotheques.getId(), bibliotheques.getUser().getLogin()))
                .toList();
    }

    @PutMapping("/update/{id}")
    public Bibliotheques update(@PathVariable Long id, @RequestBody Bibliotheques bibliotheques) {
        return  biblioService.modifier(id, bibliotheques);
    }

    @DeleteMapping("/delete/{id}")
    public String delete(@PathVariable Long id){
        return biblioService.supprimer(id);
    }

}
