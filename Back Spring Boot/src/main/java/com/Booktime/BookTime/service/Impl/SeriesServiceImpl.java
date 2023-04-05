package com.Booktime.BookTime.service.Impl;

import com.Booktime.BookTime.modele.Series;
import com.Booktime.BookTime.repository.SeriesRepository;
import com.Booktime.BookTime.service.SeriesService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@AllArgsConstructor
public class SeriesServiceImpl implements SeriesService {

    private final SeriesRepository seriesRepository;

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
//                    s.setEditeurs(series.getEditeurs());
//                    s.setLivres(series.getLivres());
                    return seriesRepository.save(s);
                }).orElseThrow(() -> new RuntimeException("Serie non trouvé"));
    }

    @Override
    public String supprimer(Long id) {
        seriesRepository.deleteById(id);
        return "Serie Supprimer";
    }

    @Override
    public Series lireById(Long id) {
        return seriesRepository.findById(id).get();
    }
}
