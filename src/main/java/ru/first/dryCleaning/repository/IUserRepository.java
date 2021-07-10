package ru.first.dryCleaning.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.first.dryCleaning.model.User;

import java.util.Optional;

public interface IUserRepository extends JpaRepository<User, Long> {
    Optional<User> findByEmail(String email);
}