package ru.first.dryCleaning.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.first.dryCleaning.model.Post;

public interface PostRepository extends JpaRepository<Post, Long> {
}
