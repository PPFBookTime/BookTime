package com.Booktime.BookTime.controller.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class LivresDTO {
    private Long id;
    private String Titre;
    private Integer nbTome;
    private String Serie;
    private String image;
}
