package com.Booktime.BookTime.controller;

import com.Booktime.BookTime.controller.dto.BiblioDTO;
import com.Booktime.BookTime.controller.dto.LiBiblDTO;
import com.Booktime.BookTime.controller.dto.LiBiblMinimalDTO;
import com.Booktime.BookTime.modele.LiBibl;
import com.Booktime.BookTime.service.LiBiblService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/LiBibl")
@AllArgsConstructor
public class LiBiblController {

    private final LiBiblService liBiblService;

    @PostMapping("/create")
    public LiBibl create(@RequestBody LiBibl liBibl) {
        return liBiblService.creer(liBibl);
    }

    @GetMapping("/read")
    public List<LiBiblDTO> read() {
        return liBiblService.lire()
                .stream()
                .map(liBibl -> new LiBiblDTO(liBibl.getId(),
                        liBibl.getBibliotheques().getUser().getLogin(),
                        liBibl.getLivres().getTitre(),
                        liBibl.getLivres().getSeries().getNom(),
                        liBibl.getLivres().getImages(),
                        liBibl.getLivres().getDescription(),
                        liBibl.getEtat()))
                .toList();
    }

    @PutMapping("/update")
    public LiBiblDTO update(@RequestBody Long id, @RequestBody LiBiblMinimalDTO liBiblMinimalDTO){
        LiBibl liBibl = liBiblService.lireLiBibl(id);
        liBibl.setEtat(liBiblMinimalDTO.getEtat());
        LiBibl updated = liBiblService.modifier(liBibl);
        return new LiBiblDTO(updated.getId(),
                updated.getBibliotheques().getUser().getLogin(),
                updated.getLivres().getTitre(),
                updated.getLivres().getSeries().getNom(),
                updated.getLivres().getImages(),
                updated.getLivres().getDescription(),
                updated.getEtat());
    }

    @DeleteMapping("/delete/{id}")
    public String delete(@PathVariable Long id) {
        return liBiblService.supprimer(id);
    }
}
