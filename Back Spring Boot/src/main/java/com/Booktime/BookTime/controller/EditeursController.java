package com.Booktime.BookTime.controller;

import com.Booktime.BookTime.modele.Editeurs;
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
    public List<Editeurs> read() {
        return editeursService.lire();

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
