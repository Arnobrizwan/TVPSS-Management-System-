package com.example.service;

import com.example.model.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.util.HashMap;
import java.util.Map;

public class UserService {

    private final Map<String, User> userMap = new HashMap<>();
    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    public UserService() {
        userMap.put("admin", new User("admin", passwordEncoder.encode("admin"), "ADMIN"));
        userMap.put("teacher", new User("teacher", passwordEncoder.encode("teacher"), "TEACHER"));
        userMap.put("student", new User("student", passwordEncoder.encode("student"), "STUDENT"));
    }

    public User findByUsername(String username) {
        return userMap.get(username);  // This will return null if the user doesn't exist
    }

    public void registerUser(String username, String password, String role) {
        String hashedPassword = passwordEncoder.encode(password);
        userMap.put(username, new User(username, hashedPassword, role));
    }

    public boolean validatePassword(String username, String rawPassword) {
        User user = findByUsername(username);
        if (user != null) {
            return passwordEncoder.matches(rawPassword, user.getPassword());
        }
        return false;
    }
}
