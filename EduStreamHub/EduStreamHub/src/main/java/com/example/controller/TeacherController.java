package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/teacher")
public class TeacherController {

    @GetMapping("dashboard")
    public String showTeacherDashboard(Model model) {
        model.addAttribute("myClasses", new String[]{"Math Class", "English Class"});
        return "teacherDashboard";
    }
}
