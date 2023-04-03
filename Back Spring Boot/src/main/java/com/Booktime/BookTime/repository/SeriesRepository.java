package com.Booktime.BookTime.repository;

import com.Booktime.BookTime.modele.Series;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SeriesRepository extends JpaRepository<Series, Long> {
}
