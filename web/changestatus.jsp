<%-- 
    Document   : changestatus
    Created on : Apr 8, 2015, 1:10:48 AM
    Author     : Rakesh Chand
--%>

<%@page import="org.hibernate.model.Adpost"%>
<%@page import="org.hibernate.controller.HibernateUtil"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>

<%
    if (session.getAttribute("admin") != null) {%>



<%
    int id=Integer.parseInt(request.getParameter("id"));
    int status=0;
    Session s=HibernateUtil.getSession();
    Criteria c=s.createCriteria(Adpost.class);
    c.add(Restrictions.eq("id",id));
    List <Adpost>ls=c.list();
    for(Adpost adpost: ls){
       status = adpost.getEnable();
       
       if(status == 0){
           adpost.setEnable(1);
           s.save(adpost);
             s.beginTransaction().commit();
       }
       else{
           adpost.setEnable(0);
           s.save(adpost);
             s.beginTransaction().commit();
       }
    }
    
        
    %>
           <jsp:forward page="enabledisable.jsp"/>
<%} else {%>
<% response.sendRedirect("Login.jsp");
        }%>