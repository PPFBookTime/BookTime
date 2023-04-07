package com.Booktime.BookTime.controller.dto;

import com.Booktime.BookTime.modele.Series;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
public class EditeursDTO {
    private Long id;
    private String name;
    private List<String> series;
}
