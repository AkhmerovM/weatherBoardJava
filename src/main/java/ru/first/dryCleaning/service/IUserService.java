package ru.first.dryCleaning.service;

import ru.first.dryCleaning.model.User;

import java.util.List;

public interface IUserService {
    public Long getAuthUserId();

    public User findUserById(Long userId);

    public List<User> allUsers() ;

    public boolean saveUser(User user) ;

    public boolean deleteUser(Long userId);

}
