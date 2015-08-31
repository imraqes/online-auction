<%-- 
    Document   : changepasswordresult
    Created on : Apr 1, 2015, 5:58:13 AM
    Author     : Rakesh Chand
--%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.model.Register"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.controller.HibernateUtil"%>
<%
    if (session.getAttribute("user") != null) {%>

<%
    // process input 

    String oldpwd = request.getParameter("oldpwd");
    String newpwd = request.getParameter("newpwd");
    
    
    
    
   Session s = HibernateUtil.getSession();
   Criteria crit = s.createCriteria(Register.class);
   crit.add(Restrictions.eq("username", session.getAttribute("user")));
   crit.add(Restrictions.eq("password", oldpwd));
   List<Register> list = crit.list();
   if(!list.isEmpty()){
        Transaction t = s.beginTransaction();
        
        String string = "update Register as r set r.password = :password where r.username= :username";
        Query q = s.createQuery(string);
        
        q.setParameter("password", newpwd);
        q.setParameter("username", session.getAttribute("user"));

        q.executeUpdate();
        t.commit();
        %>
        <h1>PASSWORD CHANGED SUCCESSFULLY</h1>
<a href="index.jsp">GO HOME</a>
<%
        
        
   }else{
       out.println("<h1>Entered old passwowrd is wrong</h1>");
   }

%>









<%} else {%>
<% response.sendRedirect("Login.jsp");
    }%>
    