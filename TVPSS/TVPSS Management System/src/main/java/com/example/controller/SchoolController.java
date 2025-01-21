/*
 * package com.example.controller;
 * 
 * import org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.*; import com.example.model.School;
 * import com.example.service.SchoolService;
 * 
 * import java.util.List;
 * 
 * @Controller
 * 
 * @RequestMapping("/schools") public class SchoolController { private final
 * SchoolService schoolService = new SchoolService();
 * 
 * @GetMapping public String showSchoolList(Model model) { List<School> schools
 * = schoolService.getAllSchools(); // Get all schools with proper IDs
 * model.addAttribute("schools", schools); return "schoolList"; }
 * 
 * @GetMapping("/add") public String showAddSchoolPage() { return "addSchool"; }
 * 
 * @PostMapping("/save") public String saveSchool(@RequestParam("name") String
 * name,
 * 
 * @RequestParam("location") String location,
 * 
 * @RequestParam("status") String status, Model model) {
 * schoolService.addSchool(new School(0, name, location, status)); // Save
 * school model.addAttribute("message", "School added successfully!"); return
 * "redirect:/schools"; }
 * 
 * @GetMapping("/edit") public String editSchool(@RequestParam("id") int id,
 * Model model) { School school = schoolService.getSchoolById(id); if (school ==
 * null) { model.addAttribute("error", "School not found!"); return "errorPage";
 * // Redirect to an error page if the school doesn't exist }
 * model.addAttribute("school", school); return "editSchool"; }
 * 
 * @PostMapping("/update") public String updateSchool(@RequestParam("id") int
 * id,
 * 
 * @RequestParam("name") String name,
 * 
 * @RequestParam("location") String location,
 * 
 * @RequestParam("status") String status) { School updatedSchool = new
 * School(id, name, location, status);
 * schoolService.updateSchool(updatedSchool); return "redirect:/schools"; }
 * 
 * @GetMapping("/delete") public String deleteSchool(@RequestParam("id") int id,
 * Model model) { School school = schoolService.getSchoolById(id); if (school ==
 * null) { model.addAttribute("error", "School not found!"); return "errorPage";
 * // Redirect to an error page if the school doesn't exist }
 * model.addAttribute("school", school); return "deleteSchool"; }
 * 
 * @PostMapping("/delete") public String confirmDeleteSchool(@RequestParam("id")
 * int id) { schoolService.deleteSchool(id); return "redirect:/schools"; } }
 * 
 */

package com.example.controller;

import com.example.model.School;
import com.example.service.SchoolService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/schools")
public class SchoolController {

    private final SchoolService schoolService = new SchoolService(); // Manually instantiate the service

    // Method to check if the user is an admin
    private boolean isAdmin(HttpSession session) {
        String userRole = (String) session.getAttribute("userRole");
        return "ADMIN".equalsIgnoreCase(userRole);
    }

    // View school list
    @GetMapping
    public String showSchoolList(Model model, HttpSession session) {
        if (!isAdmin(session)) {
            return "redirect:/login"; // Redirect to login page if not an admin
        }

        List<School> schools = schoolService.getAllSchools();
        model.addAttribute("schools", schools);
        return "schoolList";
    }

    // Show add school form
    @GetMapping("/add")
    public String showAddSchoolPage(HttpSession session) {
        if (!isAdmin(session)) {
            return "redirect:/login"; // Redirect to login page if not an admin
        }
        return "addSchool"; // Return the page where the admin can add a new school
    }

    // Save new school
    @PostMapping("/save")
    public String saveSchool(@RequestParam("name") String name,
                             @RequestParam("location") String location,
                             @RequestParam("status") String status,
                             Model model, HttpSession session) {
        if (!isAdmin(session)) {
            return "redirect:/login"; // Redirect to login page if not an admin
        }

        schoolService.addSchool(new School(0, name, location, status)); // Save new school
        model.addAttribute("message", "School added successfully!");
        return "redirect:/schools"; // Redirect to the school list after adding
    }

    // Edit school form (GET method)
    @GetMapping("/edit/{id}")
    public String editSchool(@PathVariable("id") int id, Model model, HttpSession session) {
        if (!isAdmin(session)) {
            return "redirect:/login"; // Redirect to login page if not an admin
        }

        School school = schoolService.getSchoolById(id);
        if (school == null) {
            model.addAttribute("error", "School not found!");
            return "errorPage"; // Show error page if the school does not exist
        }

        model.addAttribute("school", school);
        return "editSchool"; // Return the edit form for the school
    }

    // Update school information (POST method)
    @PostMapping("/update")
    public String updateSchool(@RequestParam("id") int id,
                               @RequestParam("name") String name,
                               @RequestParam("location") String location,
                               @RequestParam("status") String status,
                               HttpSession session) {
        if (!isAdmin(session)) {
            return "redirect:/login"; // Redirect to login page if not an admin
        }

        School updatedSchool = new School(id, name, location, status);
        schoolService.updateSchool(updatedSchool);
        return "redirect:/schools"; // Redirect to the school list after updating
    }

    // Delete school form (GET method)
    @GetMapping("/delete/{id}")
    public String deleteSchool(@PathVariable("id") int id, Model model, HttpSession session) {
        if (!isAdmin(session)) {
            return "redirect:/login"; // Redirect to login page if not an admin
        }

        School school = schoolService.getSchoolById(id);
        if (school == null) {
            model.addAttribute("error", "School not found!");
            return "errorPage"; // Show error page if the school does not exist
        }

        model.addAttribute("school", school);
        return "deleteSchool"; // Show the confirmation page for deleting the school
    }

    // Confirm delete school (POST method)
    @PostMapping("/delete")
    public String confirmDeleteSchool(@RequestParam("id") int id, HttpSession session) {
        if (!isAdmin(session)) {
            return "redirect:/login"; // Redirect to login page if not an admin
        }

        schoolService.deleteSchool(id);
        return "redirect:/schools"; // Redirect to the school list after deleting
    }
}
