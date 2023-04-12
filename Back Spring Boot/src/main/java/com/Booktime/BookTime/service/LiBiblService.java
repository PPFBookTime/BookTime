package com.Booktime.BookTime.service;

import com.Booktime.BookTime.controller.dto.LiBiblDTO;
import com.Booktime.BookTime.modele.LiBibl;

import java.util.List;

public interface LiBiblService {

    LiBibl creer(LiBibl liBibl);

    List<LiBibl> lire();
    List<LiBibl> lireByUserId();

    LiBibl modifier(LiBibl liBibl);

    String supprimer(Long id);

    LiBibl lireLiBibl(Long id);
}
