package ru.first.dryCleaning.model;

import lombok.Data;
import org.springframework.web.servlet.FrameworkServlet;

import javax.persistence.*;
import javax.transaction.Transactional;

@Entity
@Table(name = "post")
@Data
@Transactional
public class Post {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "author_id")
    private Long author_id;

    @Column(name = "text")
    private String text;

    public Post(Long author_id, String text) {
        this.author_id = author_id;
        this.text = text;
    }

    public Post() {

    }
}

