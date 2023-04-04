package com.Booktime.BookTime.controller.api;

import com.Booktime.BookTime.controller.dto.LiBiblDTO;
import com.Booktime.BookTime.service.LiBiblService;
import com.Booktime.BookTime.service.UserService;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/library")
@AllArgsConstructor
public class LibraryController {

    private final UserService userService;

    @GetMapping("/{id}/books")
    public List<LiBiblDTO> read(
            @PathVariable Long id
    ) {
        return this.userService.lireById(id)
                .getBibliotheques()
                .getLiBibl()
                .stream()
                .map(liBibl -> new LiBiblDTO(liBibl.getId(),
                        liBibl.getBibliotheques().getUser().getLogin(),
                        liBibl.getLivres().getTitre(),
                        liBibl.getEtat()))
                .toList();
    }

}
