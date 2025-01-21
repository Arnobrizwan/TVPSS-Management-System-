package com.example.service;

import com.example.model.School;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class SchoolService 
{
    private final List<School> schoolList = new ArrayList<>();
    private int nextId = 3;

    public SchoolService() 
    {
        schoolList.add(new School("School A", "Location A", "Active"));
        schoolList.add(new School("School B", "Location B", "Inactive"));
    }

    public List<School> getAllSchools() 
    {
        return schoolList;
    }

    public School getSchoolById(int id) 
    {
        for (School school : schoolList) 
        {
            if (school.getId() == id) 
            {
                return school;
            }
        }
        return null;
    }

    public void updateSchool(School updatedSchool) 
    {
        for (int i = 0; i < schoolList.size(); i++) 
        {
            if (schoolList.get(i).getId() == updatedSchool.getId()) 
            {
                schoolList.set(i, updatedSchool);
                break;
            }
        }
    }

    public void deleteSchool(int id) {
        schoolList.removeIf(school -> school.getId() == id);
    }

    public void addSchool(School school) 
    {
        school.setId(nextId++);
        schoolList.add(school);
    }
}

