/*
 * package com.example.repository;
 * 
 * import com.example.model.School; import org.hibernate.Session; import
 * org.hibernate.SessionFactory; import org.hibernate.query.Query;
 * 
 * import java.util.List;
 * 
 * public class SchoolDao {
 * 
 * private SessionFactory sessionFactory;
 * 
 * // Constructor to inject the SessionFactory public SchoolDao(SessionFactory
 * sessionFactory) { this.sessionFactory = sessionFactory; }
 * 
 * public List<School> getAllSchools() { Session session =
 * sessionFactory.getCurrentSession(); Query<School> query =
 * session.createQuery("from School", School.class); return
 * query.getResultList(); }
 * 
 * public School getSchoolById(int id) { Session session =
 * sessionFactory.getCurrentSession(); return session.get(School.class, id); }
 * 
 * public void updateSchool(School school) { Session session =
 * sessionFactory.getCurrentSession(); session.update(school); }
 * 
 * public void deleteSchool(int id) { Session session =
 * sessionFactory.getCurrentSession(); School school = session.get(School.class,
 * id); if (school != null) { session.delete(school); } }
 * 
 * public void addSchool(School school) { Session session =
 * sessionFactory.getCurrentSession(); session.save(school); } }
 */

package com.example.repository;

import com.example.model.School;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class SchoolDao {

    private SessionFactory sessionFactory;

    // Constructor to inject the SessionFactory
    public SchoolDao(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<School> getAllSchools() {
        try (Session session = sessionFactory.openSession()) {
            Query<School> query = session.createQuery("from School", School.class);
            return query.getResultList();
        }
    }

    public School getSchoolById(int id) {
        try (Session session = sessionFactory.openSession()) {
            return session.get(School.class, id);
        }
    }

    public void updateSchool(School school) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();  // Begin transaction
            session.update(school);  // Update the school
            transaction.commit();  // Commit the transaction
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();  // Rollback if error occurs
            e.printStackTrace();
        }
    }

    public void deleteSchool(int id) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();  // Begin transaction
            School school = session.get(School.class, id);
            if (school != null) {
                session.delete(school);  // Delete the school
            }
            transaction.commit();  // Commit the transaction
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();  // Rollback if error occurs
            e.printStackTrace();
        }
    }

    public void addSchool(School school) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();  // Begin transaction
            session.save(school);  // Save the new school
            transaction.commit();  // Commit the transaction
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();  // Rollback if error occurs
            e.printStackTrace();
        }
    }
}
