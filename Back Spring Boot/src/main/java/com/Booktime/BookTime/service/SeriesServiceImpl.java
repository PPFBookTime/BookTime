package com.Booktime.BookTime.service;

import com.Booktime.BookTime.modele.Series;
import com.Booktime.BookTime.repository.SeriesRepository;
import com.Booktime.BookTime.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class SeriesServiceImpl implements SeriesService{

    private final SeriesRepository seriesRepository;
    private final UserRepository userRepository;

    @Override
    public Series creer(Series series) {
        return seriesRepository.save(series);
    }

    @Override
    public List<Series> lire() {
        return seriesRepository.findAll();
    }

    @Override
    public Series modifier(Long id, Series series) {
        return seriesRepository.findById(id)
                .map(s -> {
                    s.setNom(series.getNom());
                    s.setEditeurs(series.getEditeurs());
                    return seriesRepository.save(s);
                }).orElseThrow(() -> new RuntimeException("Serie non trouvé"));
    }

    @Override
    public String supprimer(Long id) {
        userRepository.deleteById(id);
        return "Serie Supprimer";
    }
}
