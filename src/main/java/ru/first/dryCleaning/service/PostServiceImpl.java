package ru.first.dryCleaning.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.first.dryCleaning.dao.IPostDAO;
import ru.first.dryCleaning.model.Post;

import java.util.List;
@Service
public class PostServiceImpl implements IPostService{
    @Autowired
    private IPostDAO postDAO;
    @Override
    @Transactional
    public void addPost(String text) {
        postDAO.addPost(text);
    }

    @Override
    @Transactional
    public void updatePost(long id, String text) {
        postDAO.updatePost(id, text);
    }

    @Override
    @Transactional
    public void removePost(long id) {
        postDAO.removePost(id);

    }

    @Override
    @Transactional
    public Post getPostById(long id) {
        return postDAO.getPostById(id);
    }

    @Override
    @Transactional
    public List<Post> list() {
        return postDAO.list();
    }
}
