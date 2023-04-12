package com.Booktime.BookTime.service;

import com.Booktime.BookTime.modele.Bibliotheques;

import java.util.List;

public interface BiblioService {

    Bibliotheques creer(Bibliotheques bibliotheques);

    List<Bibliotheques> lire();

    Bibliotheques modifier(Long id, Bibliotheques bibliotheques);

    String supprimer(Long id);

    Bibliotheques lireBiblioById(Long id);
}
