package com.Booktime.BookTime.modele;

import com.Booktime.BookTime.controller.dto.SeriesDTO;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.http.HttpStatus;

import java.util.List;

@Entity
@Table(name = "livres")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Livres {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String titre;
    private Integer Numero_de_tome;
    @ManyToOne
    @JoinColumn(name = "Serie_ID")
    private Series series;
    private String images;
    private String description;
    @OneToMany(mappedBy = "livres", fetch = FetchType.LAZY)
    private List<LiBibl> liBibls;
}
