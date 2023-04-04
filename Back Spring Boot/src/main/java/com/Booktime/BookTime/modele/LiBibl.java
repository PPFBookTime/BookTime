package com.Booktime.BookTime.modele;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Entity
@Table(name = "livre_bibliotheque")
@Getter
@Setter
@NoArgsConstructor
public class LiBibl {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "bibliothèques_ID")
    private Bibliotheques bibliotheques;

    @ManyToOne
    @JoinColumn(name = "livres_ID")
    private Livres livres;

    private String etat;
}