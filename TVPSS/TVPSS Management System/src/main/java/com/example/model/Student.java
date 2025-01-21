package com.example.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity  // Marks the class as an entity that will be mapped to a database table
@Table(name = "students")  // Specifies the table name in the database
public class Student {

    @Id  // Marks the field as the primary key
    @GeneratedValue(strategy = GenerationType.IDENTITY)  // Auto-increment for the 'id' field
    @Column(name = "id")  // Maps the 'id' field to the 'id' column in the database
    private int id;

    @Column(name = "name", nullable = false)  // Maps the 'name' field to the 'name' column in the database
    private String name;

    @Column(name = "email", nullable = false, unique = true)  // Maps the 'email' field to the 'email' column in the database
    private String email;

    @Column(name = "course")  // Maps the 'course' field to the 'course' column in the database
    private String course;

    @Column(name = "status")  // Maps the 'status' field to the 'status' column in the database
    private String status;

    // Default constructor is required by JPA
    public Student() {}

    // Constructor to initialize the fields
    public Student(int id,String name, String email, String course, String status) {
    	this.id=id;
        this.name = name;
        this.email = email;
        this.course = course;
        this.status = status;
    }

    // Getters and setters for all fields
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
