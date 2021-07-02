package ru.first.dryCleaning.service;

import ru.first.dryCleaning.model.Post;

import java.util.List;

public interface IPostService {

    public void addPost(String text);
    public void updatePost(long id, String text);
    public void removePost(long id);
    public Post getPostById(long id);
    public List<Post> list();
}
