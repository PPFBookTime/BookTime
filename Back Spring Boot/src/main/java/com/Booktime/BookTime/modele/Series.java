package com.Booktime.BookTime.modele;

import jakarta.persistence.Entity;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;


@Entity
@Table(name = "series")
@Getter
@Setter
@NoArgsConstructor
public class Series {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String Nom;


    @ManyToOne
    @JoinColumn(name = "Editeur_ID")
    private Editeurs editeurs;

    @OneToMany(mappedBy = "series", fetch = FetchType.LAZY)
    private List<Livres> livres;

}
