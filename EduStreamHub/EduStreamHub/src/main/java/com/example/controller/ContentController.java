package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.model.Content;
import com.example.service.ContentService;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/content")
public class ContentController {

    private final ContentService contentService = new ContentService();

    private boolean isUserLoggedIn(HttpSession session) {
        return session.getAttribute("userRole") != null;
    }

    @GetMapping("library")
    public String showContentLibrary(Model model, HttpSession session,
                                     @RequestParam(value = "successMessage", required = false) String successMessage) {
        if (!isUserLoggedIn(session)) {
            return "redirect:/login";
        }

        model.addAttribute("contents", contentService.getAllContents());
        if (successMessage != null) {
            model.addAttribute("successMessage", successMessage);
        }
        return "contentLibrary";
    }

    @GetMapping("edit")
    public String showEditContentPage(@RequestParam("id") Long id, Model model, HttpSession session) {
        if (!isUserLoggedIn(session)) {
            return "redirect:/login";
        }

        Content content = contentService.getContentById(id);
        if (content == null) {
            model.addAttribute("errorMessage", "Content not found.");
            return "errorPage";
        }

        model.addAttribute("content", content);
        return "editContent";
    }

    @PostMapping("update")
    public String updateContent(@RequestParam("id") Long id,
                                @RequestParam("title") String title,
                                @RequestParam("description") String description,
                                HttpSession session,
                                RedirectAttributes redirectAttributes) {
        if (!isUserLoggedIn(session)) {
            return "redirect:/login";
        }

        Content existingContent = contentService.getContentById(id);
        if (existingContent == null) {
            redirectAttributes.addFlashAttribute("errorMessage", "Content not found.");
            return "redirect:/content/library";
        }

        Content updatedContent = new Content(id, title, description, existingContent.getFilePath());
        contentService.updateContent(updatedContent);

        redirectAttributes.addFlashAttribute("successMessage", "Content updated successfully!");
        return "redirect:/content/library";
    }

    @GetMapping("delete")
    public String deleteContent(@RequestParam("id") Long id, Model model, HttpSession session) {
        if (!isUserLoggedIn(session)) {
            return "redirect:/login";
        }

        Content content = contentService.getContentById(id);
        if (content == null) {
            model.addAttribute("errorMessage", "Content not found.");
            return "errorPage";
        }

        model.addAttribute("content", content);
        return "deleteContent";
    }

    @PostMapping("delete")
    public String confirmDeleteContent(@RequestParam("id") Long id,
                                       RedirectAttributes redirectAttributes) {
        contentService.deleteContent(id);
        redirectAttributes.addFlashAttribute("successMessage", "Content deleted successfully!");
        return "redirect:/content/library";
    }
}
