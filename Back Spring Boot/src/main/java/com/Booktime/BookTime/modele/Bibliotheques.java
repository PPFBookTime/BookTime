package com.Booktime.BookTime.modele;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

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
}
