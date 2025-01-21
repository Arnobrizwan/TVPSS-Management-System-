package com.example.controller;

import com.example.model.User;
import com.example.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
public class AuthController 
{

    private final UserService userService = new UserService();

    @GetMapping("/login")
    public String showLoginPage(@RequestParam(value = "role", required = false) String role, Model model) 
    {
        model.addAttribute("role", role);
        return "login";
    }

    @PostMapping("/login")
    public String loginUser(@RequestParam("username") String username,
                            @RequestParam("password") String password,
                            Model model,
                            HttpSession session) 
    {
        User user = userService.findByUsername(username);
        if (user != null && user.getPassword().equals(password)) 
        {
            session.setAttribute("userRole", user.getRole());
            if ("ADMIN".equalsIgnoreCase(user.getRole())) 
            {
                session.setAttribute("dashboardUrl", "/admin/dashboard");
                return "redirect:/admin/dashboard";
            } 
            else if ("TEACHER".equalsIgnoreCase(user.getRole())) 
            {
                session.setAttribute("dashboardUrl", "/teacher/dashboard");
                return "redirect:/teacher/dashboard";
            }
            else if ("STUDENT".equalsIgnoreCase(user.getRole())) {
                session.setAttribute("dashboardUrl", "/student/dashboard");
                return "redirect:/student/dashboard"; // Redirect to Student dashboard
            }
        }
        model.addAttribute("error", "Incorrect username or password");
        return "login";
    }

    @GetMapping("/register")
    public String showRegisterPage() {
        return "register";
    }

    @PostMapping("/register")
    public String registerUser(@RequestParam("username") String username,
                               @RequestParam("password") String password,
                               @RequestParam("role") String role,
                               Model model) 
    {
        User existingUser = userService.findByUsername(username);
        if (existingUser != null) 
        {
            model.addAttribute("error", "Username already exists.");
            return "register";
        }
        userService.registerUser(username, password, role.toUpperCase());
        model.addAttribute("message", "Registration successful! Please log in.");
        return "redirect:/login";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) 
    {
        session.invalidate();
        return "redirect:/index";
    }
}

