package com.Booktime.BookTime.service.Impl;

import com.Booktime.BookTime.modele.Editeurs;
import com.Booktime.BookTime.repository.EditeursRepository;
import com.Booktime.BookTime.service.EditeursService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class EditeursServiceImpl implements EditeursService {
    
    private final EditeursRepository editeursRepository;
    @Override
    public Editeurs creer(Editeurs editeurs) {
        return editeursRepository.save(editeurs);
    }

    @Override
    public List<Editeurs> lire() {
        return editeursRepository.findAll();
    }

    @Override
    public Editeurs modifier(Long id, Editeurs editeurs) {
        return editeursRepository.findById(id)
                .map(e ->{
                    e.setNom(editeurs.getNom());
                    e.setSeries(editeurs.getSeries());
                    return editeursRepository.save(e);
                } ).orElseThrow(() -> new RuntimeException("Editeur non trouvé"));
    }

    @Override
    public String supprimer(Long id) {
        editeursRepository.deleteById(id);
        return "Editeur Supprimer";
    }
}
