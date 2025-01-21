package com.example.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;

@Entity
@Table(name = "users")  // Map the User class to the 'users' table in the database
public class User {
    
    @Id  // Indicate that this field is the primary key
    @GeneratedValue(strategy = GenerationType.IDENTITY)  // Auto-increment for the 'id' field
    @Column(name = "id")  // Map the 'id' field to the 'id' column in the database
    private Long id;

    @Column(name = "username", nullable = false, unique = true)  // Map to 'username' column
    private String username;

    @Column(name = "password", nullable = false)  // Map to 'password' column
    private String password;

    @Column(name = "role")  // Map to 'role' column
    private String role;

    // Default constructor required by JPA
    public User() {}

    // Constructor to initialize the fields
    public User(Long id,String username, String password, String role) {
    	this.id=id;
        this.username = username;
        this.password = password;
        this.role = role;
    }

    // Getters and setters for each field
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
