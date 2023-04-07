package com.Booktime.BookTime.controller.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LivresDTO {
    private Long id;
    private String Titre;
    private Integer nbTome;
    private SeriesMinimalDTO Serie;
    private String image;
    private String description;
}
