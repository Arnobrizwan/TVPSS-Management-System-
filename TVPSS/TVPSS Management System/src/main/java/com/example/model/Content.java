package com.example.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Column;
import javax.persistence.Table;

@Entity  // Marks the class as an entity that will be mapped to a database table
@Table(name = "content")  // Specifies the table name in the database
public class Content {

    @Id  // Marks the field as the primary key
    @GeneratedValue(strategy = GenerationType.IDENTITY)  // Auto-increment for the 'id' field
    @Column(name = "id")  // Maps the 'id' field to the 'id' column in the database
    private Long id;

    @Column(name = "title", nullable = false)  // Maps the 'title' field to the 'title' column in the database
    private String title;

    @Column(name = "description")  // Maps the 'description' field to the 'description' column in the database
    private String description;

    @Column(name = "file_path")  // Maps the 'filePath' field to the 'file_path' column in the database
    private String filePath;

    // Default constructor required by JPA
    public Content() {}

    // Constructor to initialize the fields
    public Content(Long id,String title, String description, String filePath) {
        this.id=id;
        this.title = title;
        this.description = description;
        this.filePath = filePath;
    }

    // Getters and setters for all fields
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    @Override
    public String toString() {
        return "Content{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", filePath='" + filePath + '\'' +
                '}';
    }
}
