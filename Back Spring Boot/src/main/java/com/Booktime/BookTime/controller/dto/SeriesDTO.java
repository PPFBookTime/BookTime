package com.Booktime.BookTime.controller.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class SeriesDTO {
    private Long id;
    private String name;
    private String editor;
}
