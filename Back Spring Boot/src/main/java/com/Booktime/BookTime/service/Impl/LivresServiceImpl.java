package com.Booktime.BookTime.service.Impl;

import com.Booktime.BookTime.modele.Livres;
import com.Booktime.BookTime.repository.LivreRepository;
import com.Booktime.BookTime.service.LivresService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class LivresServiceImpl implements LivresService {

    private final LivreRepository livreRepository;


    @Override
    public Livres creer(Livres livres) {
        return livreRepository.save(livres);
    }

    @Override
    public List<Livres> lire() {
        return livreRepository.findAll();
    }

    @Override
    public Livres modifier(Long id, Livres livres) {
        return livreRepository.findById(id)
                .map(l ->{
                    l.setTitre(livres.getTitre());
                    l.setNumero_de_tome(livres.getNumero_de_tome());
                    l.setSeries(livres.getSeries());
                    l.setImages(l.getImages());
                    return livreRepository.save(l);
                }).orElseThrow(() -> new RuntimeException("Livre non trouvé")) ;
    }

    @Override
    public String supprimer(Long id) {
        livreRepository.deleteById(id);
        return "Livre Supprimer";
    }

    @Override
    public Livres lireLivreSeries(Integer id) {
        return livreRepository.findLivresBySeries(id);
    }

    @Override
    public Livres lireLivreById(Long id) {
        return livreRepository.findLivresById(id);
    }
}
