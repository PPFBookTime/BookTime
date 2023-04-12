package com.Booktime.BookTime.controller.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserMinimalDTO {
    private Long id;
    private String login;
}
