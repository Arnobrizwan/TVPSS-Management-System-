package com.example.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity  // Marks the class as an entity that will be mapped to a database table
@Table(name = "assignments")  // Specifies the table name in the database
public class Assignment {

    @Id  // Marks the field as the primary key
    @GeneratedValue(strategy = GenerationType.IDENTITY)  // Auto-increment for the 'id' field
    @Column(name = "id")  // Maps the 'id' field to the 'id' column in the database
    private int id;

    @Column(name = "title", nullable = false)  // Maps the 'title' field to the 'title' column in the database
    private String title;

    @Column(name = "due_date")  // Maps the 'dueDate' field to the 'due_date' column in the database
    private String dueDate;

    // Default constructor required by JPA
    public Assignment() {}

    // Constructor to initialize the fields
    public Assignment(int id,String title, String dueDate) {
    	this.id=id;
        this.title = title;
        this.dueDate = dueDate;
    }

    // Getters and setters for all fields
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDueDate() {
        return dueDate;
    }

    public void setDueDate(String dueDate) {
        this.dueDate = dueDate;
    }
}
