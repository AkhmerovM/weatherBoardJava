package ru.first.dryCleaning.model;

import javax.persistence.*;

@Entity
@Table(name = "post")
public class Post {
    @Id
    @Column(name="id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name="author_id")
    private long author_id;

    @Column(name="text")
    private String text;

    public Post() {

    }

    @Id
    public long getId() {
        return id;
    }
    public Post(String text, long id) {
        this.text = text;
        this.author_id = id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getAuthor_id() {
        return author_id;
    }

    public void setAuthor_id(long author_id) {
        this.author_id = author_id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
