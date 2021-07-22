package ru.first.dryCleaning.service;

import ru.first.dryCleaning.model.Post;

import java.util.List;
import java.util.Optional;

public interface IPostService {

    public void addPost(String text);
    public void updatePost(Long id, String text);
    public void removePost(Long id);
    public Post getPostById(Long id);
    public List<Post> list();
}
