package com.Booktime.BookTime.modele;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Entity
@Table(name = "bibliothèques")
@Getter
@Setter
@NoArgsConstructor
public class Bibliotheques {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @OneToOne
    @JoinColumn(name = "utilisateurs_ID")
    private User user;

    @OneToMany(mappedBy = "bibliotheques", fetch = FetchType.LAZY)
    private List<LiBibl> liBibl;

}
