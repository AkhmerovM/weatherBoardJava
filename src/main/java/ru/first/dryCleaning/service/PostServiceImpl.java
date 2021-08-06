package ru.first.dryCleaning.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.first.dryCleaning.model.Post;
import ru.first.dryCleaning.repository.PostRepository;

import java.util.List;

@Service
public class PostServiceImpl implements IPostService {
    @Autowired
    private PostRepository postRepository;
    @Autowired
    private IUserService userService;
    @Override
    public void addPost(String text) {
        Long userId = userService.getAuthUserId();
        if (userId != null) {
            postRepository.save(new Post(userId, text));
        }
    }

    @Override
    public void updatePost(Long id, String text) {
        if (postRepository.existsById(id)) {
            Post post = postRepository.getById(id);
            post.setText(text);
           postRepository.save(post);
        }
    }

    @Override
    public void removePost(Long id) {
        if (postRepository.existsById(id)) {
            postRepository.deleteById(id);
        }
    }

    @Override
    public Post getPostById(Long id) {
        if (postRepository.existsById(id)) {
            return postRepository.getById(id);
        }
        return null;
    }

    @Override
    public List<Post> list() {
        return postRepository.findAll();
    }
    public Long getRandomValue(int min, int max) {
        return Math.round((Math.random() * (max - min)) + min);
    }
}
