package org.hibernate.controller;

import org.hibernate.model.*;
import org.hibernate.Session;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.SessionFactory;

public class HibernateUtil {

    private static final SessionFactory sessionFactory;

    static {
        try {
            AnnotationConfiguration cfg = new AnnotationConfiguration();
            cfg.addAnnotatedClass(Adpost.class);
            cfg.addAnnotatedClass(Register.class);
            cfg.addAnnotatedClass(Admin.class);
            cfg.addAnnotatedClass(Bid.class);
            cfg.addAnnotatedClass(Category.class);
            cfg.configure();


            sessionFactory = cfg.buildSessionFactory();
        } catch (Throwable ex) {
            System.err.println("Error at Session Factory creation : " + ex.getMessage());
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public static Session getSession() {
        return sessionFactory.openSession();
    }
}