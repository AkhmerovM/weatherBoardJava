package ru.first.dryCleaning.service;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import ru.first.dryCleaning.model.User;

import java.util.*;

public class SecurityUser implements UserDetails {
    private final String email;
    private final String password;
    private final List<GrantedAuthority> authorities;
    private final boolean isActive;

    public SecurityUser(String email, String password, List<GrantedAuthority> authorities, boolean isActive) {
        this.email = email;
        this.password = password;
        this.authorities = authorities;
        this.isActive = isActive;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authorities;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return email;
    }

    @Override
    public boolean isAccountNonExpired() {
        return isActive;
    }

    @Override
    public boolean isAccountNonLocked() {
        return isActive;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return isActive;
    }

    @Override
    public boolean isEnabled() {
        return isActive;
    }
    public static  UserDetails fromUser(User user) {
        List<GrantedAuthority> authorities  = Collections.singletonList(new SimpleGrantedAuthority(user.getRole()));
        return new org.springframework.security.core.userdetails.User(
                user.getEmail(), user.getPassword(), user.getIsActive(), user.getIsActive(), user.getIsActive(), user.getIsActive(), authorities);
    }
}
