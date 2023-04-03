package com.Booktime.BookTime.modele;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "livres")
@Getter
@Setter
@NoArgsConstructor
public class Livres {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


}
