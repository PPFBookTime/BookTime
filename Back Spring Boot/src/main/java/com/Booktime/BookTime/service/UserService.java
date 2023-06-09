package com.Booktime.BookTime.service;

import com.Booktime.BookTime.modele.User;

import java.util.List;
import java.util.Optional;

public interface UserService {

    User creer(User user);

    List<User> lire();

    User modifier(Long id, User user);

    String supprimer(Long id);

    User lireById(Long id);

    Optional<User> userByLogin(String login);
}
