package ru.first.dryCleaning.model;

import org.springframework.web.servlet.FrameworkServlet;

import javax.persistence.*;

@Entity
@Table(name = "post")
public class Post {
    @Id
    @Column(name="id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name="author_id")
    private Long author_id;

    @Column(name="text")
    private String text;

    public Post() {

    }
    public Post(Long author_id, String text) {
        this.author_id = author_id;
        this.text = text;
    }

    public Long getAuthor_id() {
        return author_id;
    }

    public void setAuthor_id(Long author_id) {
        this.author_id = author_id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Override
    public String toString() {
        return "Post{" +
                "id=" + id +
                ", author_id=" + author_id +
                ", text='" + text + '\'' +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
