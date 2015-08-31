<%-- 
    Document   : delete
    Created on : Mar 29, 2015, 10:33:42 AM
    Author     : Rakesh Chand
--%>

<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.model.Bid"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.controller.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.model.Adpost"%>



<%
    if (session.getAttribute("admin") != null) {%>





<%

    int id = Integer.parseInt(request.getParameter("id"));
    int bid_id =0;
    Adpost ob = new Adpost();
    ob.setId(id);
    Session s = HibernateUtil.getSession();
    Transaction t = s.beginTransaction();
    s.delete(ob);
    t.commit();
    
    Criteria cr = s.createCriteria(Bid.class);
    cr.add(Restrictions.eq("adpost_id", id));
    List<Bid> list = cr.list();
    
    for(Bid bid: list){
        bid_id = bid.getId();
        bid.setId(bid_id);
        Transaction tr = s.beginTransaction();
        s.delete(bid);
        tr.commit();
    }
    response.sendRedirect("deleteproduct.jsp");
%>
<%} else {%>
<% response.sendRedirect("Login.jsp");
        }%>