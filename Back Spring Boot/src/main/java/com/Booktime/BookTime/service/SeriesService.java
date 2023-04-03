package com.Booktime.BookTime.service;

import com.Booktime.BookTime.modele.Series;

import java.util.List;

public interface SeriesService {

    Series creer(Series series);

    List<Series> lire();

    Series modifier(Long id, Series series);

    String supprimer(Long id);
}
