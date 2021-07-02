package ru.first.dryCleaning.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import ru.first.dryCleaning.config.PostMapper;
import ru.first.dryCleaning.model.Post;

import java.util.List;

@Repository
public class PostDaoImpl implements IPostDAO{
    @Autowired
    public JdbcTemplate jdbcTemplate;

    @Override
    public void addPost(String text) {
        String sql = "INSERT INTO post (id, author_id, text) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, getRandomValue(0, 100), getRandomValue(0, 100), text);
    }

    @Override
    public void updatePost(long id, String text) {
        System.out.println(id);
        System.out.println(text);
        String sql = "UPDATE post SET text=? WHERE id=?";
        jdbcTemplate.update(sql, text, id);
    }

    @Override
    public void removePost(long id) {
        String sql = "DELETE from post WHERE id=?";
        jdbcTemplate.update(sql, id);
    }

    @Override
    public Post getPostById(long id) {
        return jdbcTemplate.queryForObject("select * from post where ID="+id, new PostMapper());
    }

    @Override
    public List<Post> list() {
        return jdbcTemplate.query("select * from post", new PostMapper());
    }
    public int getRandomValue(int min, int max) {
        return (int) ((Math.random() * (max - min)) + min);
    }
}
