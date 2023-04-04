package com.Booktime.BookTime.service;

import com.Booktime.BookTime.modele.Livres;

import java.util.List;

public interface LivresService {

    Livres creer(Livres livres);

    List<Livres> lire();

    Livres modifier(Long id, Livres livres);

    String supprimer(Long id);
}
