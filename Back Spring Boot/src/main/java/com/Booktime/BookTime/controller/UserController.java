package com.Booktime.BookTime.controller;

import com.Booktime.BookTime.controller.dto.UserDTO;
import com.Booktime.BookTime.modele.User;
import com.Booktime.BookTime.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/user")
@AllArgsConstructor
public class UserController {

    private final UserService userService;

    @PostMapping("/create")
    public User create(@RequestBody User user){
        return userService.creer(user);
    }

    @GetMapping("/read")
    public List<UserDTO> read(){
        return userService.lire()
                .stream()
                .map(user -> new UserDTO(user.getId(), user.getLogin(),user.getRole()))
                .toList();
    }

    @PutMapping("/update/{id}")
    public User update(@PathVariable Long id, @RequestBody User user) {
        return userService.modifier(id, user);
    }

    @DeleteMapping("/delete/{id}")
    public String delete(@PathVariable Long id) {
        return userService.supprimer(id);
    }
}
