package com.example.service;

import com.example.model.Content;

import java.util.ArrayList;
import java.util.List;

public class ContentService {

    private final List<Content> contentList = new ArrayList<>();
    private long nextId = 3;

    public ContentService() {
        contentList.add(new Content("Admin Content 1", "Description for Admin Content 1", null));
        contentList.add(new Content("Teacher Content 1", "Description for Teacher Content 1", null));
    }

    public List<Content> getAllContents() {
        return contentList;
    }

    public Content getContentById(Long id) {
        return contentList.stream()
                .filter(content -> content.getId().equals(id))
                .findFirst()
                .orElse(null);
    }

    public void addContent(Content content) {
        content.setId(nextId++);  // Assign ID manually for now
        contentList.add(content);
    }

    public boolean updateContent(Content updatedContent) {
        for (int i = 0; i < contentList.size(); i++) {
            if (contentList.get(i).getId().equals(updatedContent.getId())) {
                contentList.set(i, updatedContent);
                return true;
            }
        }
        return false;
    }

    public void deleteContent(Long id) {
        contentList.removeIf(content -> content.getId().equals(id));
    }
}
