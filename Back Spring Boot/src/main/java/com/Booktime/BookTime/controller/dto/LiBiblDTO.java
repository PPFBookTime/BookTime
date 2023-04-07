package com.Booktime.BookTime.controller.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class LiBiblDTO {
    private long id;
    private String login;
    private String titre;
    private String series;
    private String image;
    private String description;
    private String etat;
}
