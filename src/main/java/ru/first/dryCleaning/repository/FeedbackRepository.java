package ru.first.dryCleaning.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.first.dryCleaning.model.Feedback;

public interface FeedbackRepository extends JpaRepository<Feedback, Long> {
}
