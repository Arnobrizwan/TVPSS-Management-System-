package com.example.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity  // Marks the class as an entity that will be mapped to a database table
@Table(name = "schools")  // Specifies the table name in the database
public class School {

    @Id  // Marks the field as the primary key
    @GeneratedValue(strategy = GenerationType.IDENTITY)  // Auto-increment for the 'id' field
    @Column(name = "id")  // Maps the 'id' field to the 'id' column in the database
    private int id;

    @Column(name = "name", nullable = false)  // Maps the 'name' field to the 'name' column in the database
    private String name;

    @Column(name = "location")  // Maps the 'location' field to the 'location' column in the database
    private String location;

    @Column(name = "status")  // Maps the 'status' field to the 'status' column in the database
    private String status;

    // Default constructor is required by JPA
    public School() {}

    // Constructor to initialize the fields
    public School(int id,String name, String location, String status) {
    	this.id=id;
        this.name = name;
        this.location = location;
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

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
