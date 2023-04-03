package com.Booktime.BookTime.service;

import com.Booktime.BookTime.modele.Editeurs;

import java.util.List;

public interface EditeursService {

    Editeurs creer(Editeurs editeurs);

    List<Editeurs> lire();

    Editeurs modifier(Long id, Editeurs editeurs);

    String supprimer(Long id);
}
