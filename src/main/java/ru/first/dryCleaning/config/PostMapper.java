package ru.first.dryCleaning.config;

import org.springframework.jdbc.core.RowMapper;
import ru.first.dryCleaning.model.Post;

import java.sql.ResultSet;
import java.sql.SQLException;

public class PostMapper implements RowMapper<Post> {

    @Override
    public Post mapRow(ResultSet resultSet, int i) throws SQLException {
        Post post = new Post();
        post.setId(resultSet.getLong("id"));
        post.setAuthor_id(resultSet.getLong("author_id"));
        post.setTitle(resultSet.getString("title"));
        post.setCreation_date(resultSet.getDate("creation_date"));
        post.setText(resultSet.getString("text"));
        return post;
    }
}
