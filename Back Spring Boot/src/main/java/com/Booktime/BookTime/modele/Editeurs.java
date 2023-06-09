package com.Booktime.BookTime.modele;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;
import java.util.Set;

@Entity
@Table(name = "editeurs")
@Getter
@Setter
@NoArgsConstructor
public class Editeurs {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nom;

    @OneToMany(mappedBy="editeurs", fetch = FetchType.LAZY)
    private List<Series> series;
}
