package com.Booktime.BookTime.service.Impl;

import com.Booktime.BookTime.modele.User;
import com.Booktime.BookTime.repository.UserRepository;
import com.Booktime.BookTime.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Service
@AllArgsConstructor
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;

    @Override
    public User creer(User user) {

        return userRepository.save(user);
    }

    @Override
    public List<User> lire() {

        return userRepository.findAll();
    }

    @Override
    public User modifier(Long id, User user) {
        return userRepository.findById(id)
                .map(u->{
                    u.setLogin(user.getLogin());
                    u.setRole(user.getRole());
                    return userRepository.save(u);
                }).orElseThrow(() -> new RuntimeException("User non trouvé"));
    }

    @Override
    public String supprimer(Long id) {
        userRepository.deleteById(id);
        return "User Supprimer";
    }

    @Override
    public User lireById(Long id) {
        return userRepository.findUserById(id);
    }

    @Override
    public Optional<User> userByLogin(String login){
        return userRepository.findUserByLogin(login);
    }

}
