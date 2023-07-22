package ru.first.dryCleaning.model;

import lombok.Data;

import javax.persistence.*;
import javax.transaction.Transactional;
import java.util.Date;

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

    @Column(name = "title")
    private String title;

    @Column(name = "text")
    private String text;

    @Column(name = "creation_date")
    private Date creation_date;

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name = "author_id", insertable = false, updatable = false)
    private User author;

    public Post(Long author_id, String title, String text) {
        this.author_id = author_id;
        this.title = title;
        this.text = text;
        this.creation_date = new Date();
    }

    public Post() {

    }
}

