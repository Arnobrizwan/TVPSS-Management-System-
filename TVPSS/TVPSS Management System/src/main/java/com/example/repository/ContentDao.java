package com.example.repository;

import com.example.model.Content;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.util.List;

public class ContentDao {

    private SessionFactory sessionFactory;

    public ContentDao(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<Content> getAllContents() {
        Session session = sessionFactory.getCurrentSession();
        Query<Content> query = session.createQuery("from Content", Content.class);
        return query.getResultList();
    }

    public Content getContentById(Long id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(Content.class, id);
    }

    public void addContent(Content content) {
        Session session = sessionFactory.getCurrentSession();
        session.save(content);
    }

    public boolean updateContent(Content content) {
        Session session = sessionFactory.getCurrentSession();
        Content existingContent = session.get(Content.class, content.getId());
        if (existingContent != null) {
            existingContent.setTitle(content.getTitle());
            existingContent.setDescription(content.getDescription());
            existingContent.setFilePath(content.getFilePath());
            session.update(existingContent);
            return true;
        }
        return false;
    }

    public void deleteContent(Long id) {
        Session session = sessionFactory.getCurrentSession();
        Content content = session.get(Content.class, id);
        if (content != null) {
            session.delete(content);
        }
    }
}
