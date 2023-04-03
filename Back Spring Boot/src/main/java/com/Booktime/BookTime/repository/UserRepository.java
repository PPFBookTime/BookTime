package com.Booktime.BookTime.repository;

import com.Booktime.BookTime.modele.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
}
