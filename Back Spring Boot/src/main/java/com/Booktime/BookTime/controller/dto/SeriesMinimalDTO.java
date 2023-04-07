package com.Booktime.BookTime.controller.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SeriesMinimalDTO {
    private Long id;
    private String name;
}
