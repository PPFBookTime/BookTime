package com.Booktime.BookTime.repository;

import com.Booktime.BookTime.modele.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {

    User findUserById(Long id);

    Optional<User> findUserByLogin(String login);

}
