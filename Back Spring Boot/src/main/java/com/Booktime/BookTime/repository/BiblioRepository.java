package com.Booktime.BookTime.repository;

import com.Booktime.BookTime.modele.Bibliotheques;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BiblioRepository extends JpaRepository<Bibliotheques, Long> {
}
