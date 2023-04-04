package com.Booktime.BookTime.service.Impl;

import com.Booktime.BookTime.modele.Bibliotheques;
import com.Booktime.BookTime.repository.BiblioRepository;
import com.Booktime.BookTime.service.BiblioService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class BilbioServiceImpl implements BiblioService {

    private  final BiblioRepository biblioRepository;

    @Override
    public Bibliotheques creer(Bibliotheques bibliotheques) {
        return biblioRepository.save(bibliotheques);
    }

    @Override
    public List<Bibliotheques> lire() {
        return biblioRepository.findAll();
    }

    @Override
    public Bibliotheques modifier(Long id, Bibliotheques bibliotheques) {
        return biblioRepository.findById(id)
                .map(b -> {
                    b.setUser(bibliotheques.getUser());
                    return biblioRepository.save(b);
                }).orElseThrow(() -> new RuntimeException("Biblithèque non trouvé"));
    }

    @Override
    public String supprimer(Long id) {
        biblioRepository.deleteById(id);
        return "Bibliothèque Supprimer";
    }
}
