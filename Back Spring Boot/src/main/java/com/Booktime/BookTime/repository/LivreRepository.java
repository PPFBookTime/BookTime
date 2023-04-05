package com.Booktime.BookTime.repository;

import com.Booktime.BookTime.modele.Livres;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LivreRepository extends JpaRepository<Livres,Long> {

    Livres findLivresBySeries(Integer id);

}
