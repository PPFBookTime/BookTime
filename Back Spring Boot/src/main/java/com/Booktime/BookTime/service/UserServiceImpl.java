package com.Booktime.BookTime.service;

import com.Booktime.BookTime.modele.User;
import com.Booktime.BookTime.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

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
}
