package org.hibernate.controller;

import org.hibernate.model.*;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

public class TableCreater {

    public static void main(String[] args) {
        AnnotationConfiguration cfg = new AnnotationConfiguration();
        cfg.addAnnotatedClass(Adpost.class);
        cfg.addAnnotatedClass(Register.class);
        //cfg.addAnnotatedClass(Admin.class);
        //cfg.addAnnotatedClass(Category.class);
        cfg.addAnnotatedClass(Bid.class);
        cfg.configure();
        SchemaExport se = new SchemaExport(cfg);
        se.create(true, true);
        System.out.println("Tables are creatd!!!!!!!!!!!!!!!!!!!!!!");
    }
}