package com.Booktime.BookTime.controller.api;

import com.Booktime.BookTime.controller.dto.UserDTO;
import com.Booktime.BookTime.modele.User;
import com.Booktime.BookTime.service.UserService;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

@RestController
@RequestMapping("/login")
@RequiredArgsConstructor
public class LoginController {

    private final UserService userService;

    @PostMapping(consumes = MediaType.APPLICATION_JSON_VALUE)
    public UserDTO loginuser(@RequestBody UserDTO userDTO) {
        return this.userService.userByLogin(userDTO.getLogin())
                .map(user -> new UserDTO(user.getId(),user.getLogin(),user.getRole()))
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.FORBIDDEN, "Login Incorrect"));
    }
}
