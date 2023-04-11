package com.Booktime.BookTime.service.Impl;

import com.Booktime.BookTime.modele.LiBibl;
import com.Booktime.BookTime.repository.LiBiblRepository;
import com.Booktime.BookTime.service.LiBiblService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class LiBiblServiceImpl implements LiBiblService {

    private final LiBiblRepository liBiblRepository;

    @Override
    public LiBibl creer(LiBibl liBibl) {
        return liBiblRepository.save(liBibl);
    }


    @Override
    public List<LiBibl> lire() {
        return liBiblRepository.findAll();
    }

    @Override
    public List<LiBibl> lireByUserId() {
        return null;
    }

    @Override
    public LiBibl modifier(LiBibl liBibl) {
        return liBiblRepository.save(liBibl);

    }
    @Override
    public String supprimer(Long id) {
        liBiblRepository.findById(id);
        return "Livre Bibliotheque Supprimé";
    }

    @Override
    public LiBibl lireLiBibl(Long id) {
        return liBiblRepository.findLiBiblById(id);
    }
}
