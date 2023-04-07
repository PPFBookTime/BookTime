package com.Booktime.BookTime.controller.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LiBiblDTO {
    private long id;
    private String login;
    private String titre;
    private String series;
    private String image;
    private String description;
    private String etat;
}
