<%-- 
    Document   : LoginProceed
    Created on : Jan 14, 2015, 4:18:08 PM
    Author     : Raqesh Chand
--%>

<%@page import="org.hibernate.model.Admin"%>
<%@page import="java.net.URL"%>
<%@page import="org.hibernate.model.Register"%>
<%@page import="org.hibernate.controller.HibernateUtil"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%
    
    String user = request.getParameter("user");
    String pass = request.getParameter("pass");
    Session s = HibernateUtil.getSession();
    
    Criteria ca = s.createCriteria(Register.class);
    ca.add(Restrictions.eq("username", user));
    ca.add(Restrictions.eq("password", pass));
    List<Register> rl = ca.list();
    
    Criteria ca2 = s.createCriteria(Admin.class);
    ca2.add(Restrictions.eq("email", user));
    ca2.add(Restrictions.eq("password", pass));
    List<Admin> r2 = ca2.list();
    
    
    
    
    
    
    if (rl.size() != 0) {
        for (Register register : rl) {
            session.setAttribute("user", register.getUsername());
            //session.setAttribute("pass", register.getPassword());
        }
        
        
        response.sendRedirect("index.jsp");
        
} else if (r2.size()!=0){
    for(Admin admin :r2){
        session.setAttribute("admin", admin.getEmail());
    }
    response.sendRedirect("admin.jsp");
}
    
    
    else {

response.sendRedirect("Login.jsp");
        }%>