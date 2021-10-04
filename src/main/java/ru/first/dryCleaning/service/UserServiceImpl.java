package ru.first.dryCleaning.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import ru.first.dryCleaning.constants.Role;
import ru.first.dryCleaning.model.Post;
import ru.first.dryCleaning.model.User;
import ru.first.dryCleaning.repository.UserRepository;

import javax.transaction.Transactional;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Transactional
@Service("userService")
public class UserServiceImpl implements UserDetailsService, IUserService {
    private final UserRepository userRepository;

    @Autowired
    public UserServiceImpl(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;
    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = userRepository.findByEmail(email).orElseThrow(() -> new UsernameNotFoundException("user not found"));
        return SecurityUser.fromUser(user);
    }
    public Long getAuthUserId() {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = "";
        if (principal instanceof UserDetails) {
            username = ((UserDetails)principal).getUsername();
        } else {
            username = principal.toString();
        }
        Optional<User> user = userRepository.findByEmail(username);
        return user.map(User::getId).orElse(null);
    }

    @Override
    public User findUserById(Long userId) {
        if(userRepository.findById(userId).isPresent()) {
            return userRepository.findById(userId).get();
        }
        return null;
    }

    @Override
    public List<User> allUsers() {
        return userRepository.findAll();
    }

    @Override
    public boolean saveUser(User user) {
        Optional<User> userFromDB = userRepository.findByEmail(user.getEmail());

        if (userFromDB.isPresent()) {
            return false;
        }
        user.setIsActive(true);
        user.setRole(Role.USER.toString());
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        userRepository.save(user);
        return true;
    }

    @Override
    public boolean deleteUser(Long userId) {
        if (userRepository.existsById(userId)) {
            userRepository.deleteById(userId);
            return true;
        }
        return false;
    }
    public List<Post> getPosts(Long userId) {
        User user = findUserById(userId);
        if (user != null) {
            return user.getPosts();
        }
        return null;
    }
}
