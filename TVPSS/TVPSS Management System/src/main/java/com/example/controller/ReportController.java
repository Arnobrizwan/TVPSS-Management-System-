package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.service.ContentService;

@Controller
@RequestMapping("/reports")
public class ReportController {

    private final ContentService contentService = new ContentService();

    @GetMapping
    public String showReports(Model model) {
        // 获取统计数据
        int totalContents = contentService.getAllContents().size();
        long totalImages = contentService.getAllContents().stream()
                .filter(content -> content.getFilePath() != null && content.getFilePath().endsWith(".jpg"))
                .count();
        long totalVideos = contentService.getAllContents().stream()
                .filter(content -> content.getFilePath() != null && content.getFilePath().endsWith(".mp4"))
                .count();
        long totalPdfs = contentService.getAllContents().stream()
                .filter(content -> content.getFilePath() != null && content.getFilePath().endsWith(".pdf"))
                .count();

        // 添加数据到模型
        model.addAttribute("totalContents", totalContents);
        model.addAttribute("totalImages", totalImages);
        model.addAttribute("totalVideos", totalVideos);
        model.addAttribute("totalPdfs", totalPdfs);

        return "reports";
    }
}
