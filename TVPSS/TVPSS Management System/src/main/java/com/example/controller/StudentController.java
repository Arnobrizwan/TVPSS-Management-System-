package com.example.controller;

import com.example.model.Assignment;
import com.example.model.Student;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Arrays; // Import Arrays
import java.util.List;  // Import List

@Controller
@RequestMapping("/student")
public class StudentController {

    // Check if the user is logged in as a student
    private boolean isStudentLoggedIn(HttpSession session) {
        String userRole = (String) session.getAttribute("userRole");
        return "STUDENT".equalsIgnoreCase(userRole);
    }

    @GetMapping("dashboard")
    public String showStudentDashboard(Model model, HttpSession session) {
        if (!isStudentLoggedIn(session)) {
            return "redirect:/login"; // Redirect to login page if not logged in as student
        }

        // Hardcoded list of assignments
        List<Assignment> assignments = Arrays.asList(
            new Assignment(1, "Math Homework", "2025-01-30"),
            new Assignment(2, "Science Report", "2025-02-05"),
            new Assignment(3, "History Essay", "2025-02-10")
        );

        model.addAttribute("assignments", assignments);
        model.addAttribute("message", "Welcome to the Student Dashboard!");
        return "studentDashboard"; // Return the view name
    }
    
    @GetMapping("profile")
    public String viewProfile(Model model, HttpSession session) {
        if (!isStudentLoggedIn(session)) {
            return "redirect:/login"; // Redirect to login page if not logged in as student
        }

        // Create a hardcoded student object with an 'id' field
        Student student = new Student(1, "Ibrahim", "ibrahim@gmail.com", "Computer Science", "Active");

        model.addAttribute("student", student);  // Add student data to the model
        return "studentProfile";  // Return student profile view
    }

    }


