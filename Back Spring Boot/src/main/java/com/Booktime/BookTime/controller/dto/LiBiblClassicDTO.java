package com.Booktime.BookTime.controller.dto;

import com.Booktime.BookTime.modele.Bibliotheques;
import com.Booktime.BookTime.modele.Livres;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LiBiblClassicDTO {
    private Long id;
    private Long userId;
    private Long livresId;
    private String etat;
}
