package com.example.config;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.Properties;

public class HibernateConfig {

    private static final SessionFactory sessionFactory;

    static {
        try {
            Configuration configuration = new Configuration();
            
            // Hibernate settings equivalent to hibernate.cfg.xml
            Properties settings = new Properties();
            settings.put("hibernate.connection.driver_class", "com.mysql.cj.jdbc.Driver");
            settings.put("hibernate.connection.url", "jdbc:mysql://localhost:3306/edustream?useSSL=false&serverTimezone=UTC");
            settings.put("hibernate.connection.username", "root");
            settings.put("hibernate.connection.password", "");
            settings.put("hibernate.dialect", "org.hibernate.dialect.MySQL8Dialect");
            settings.put("hibernate.show_sql", "true");
            settings.put("hibernate.format_sql", "true");
            settings.put("hibernate.hbm2ddl.auto", "update");
            
            configuration.setProperties(settings);

            // Add annotated classes
            configuration.addAnnotatedClass(com.example.model.User.class);
            configuration.addAnnotatedClass(com.example.model.School.class);
            configuration.addAnnotatedClass(com.example.model.Content.class);
            configuration.addAnnotatedClass(com.example.model.Student.class);
            configuration.addAnnotatedClass(com.example.model.Assignment.class);

            sessionFactory = configuration.buildSessionFactory();
        } catch (Throwable ex) {
            throw new ExceptionInInitializerError("Initial SessionFactory creation failed " + ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public static void shutdown() {
        getSessionFactory().close();
    }
}
