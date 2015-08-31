<%-- 
    Document   : prodseller2
    Created on : Apr 10, 2015, 4:41:33 AM
    Author     : Rakesh Chand
--%>

<%
    if (session.getAttribute("admin") != null) {%>


    <style>
 
input[type="text"] {
	padding: 10px;
	width: 37.5%;
	color: #9198A3;
	font-size: 0.8125em;
	background: #fff;
	outline: none;
	display: block;
	border: 1px solid #eee;
}
input[type="submit"] {
	display: inline-block;
	padding: 13px 25px;
	background: #fb4d01;
	color: #FFF;
	font-size: 1em;
	line-height: 18px;
	text-transform: uppercase;
	border: none;
	outline: none;
	transition: 0.2s;
	-webkit-transition: 0.2s;
	-moz-transition: 0.2s;
	-o-transition: 0.2s;
}
input[type="submit"]:hover{
	background:#26d2fc;	
}
           body {
                width: 600px;
                margin: 40px auto;
                font-family: 'trebuchet MS', 'Lucida sans', Arial;
                font-size: 14px;
                color: #444;
            }

            table {
                *border-collapse: collapse; /* IE7 and lower */
                border-spacing: 0;
                width: 100%;    
            }

            .bordered {
                border: solid #ccc 1px;
                -moz-border-radius: 6px;
                -webkit-border-radius: 6px;
                border-radius: 6px;
                -webkit-box-shadow: 0 1px 1px #ccc; 
                -moz-box-shadow: 0 1px 1px #ccc; 
                box-shadow: 0 1px 1px #ccc;         
            }

            .bordered tr:hover {
                background: #fbf8e9;
                -o-transition: all 0.1s ease-in-out;
                -webkit-transition: all 0.1s ease-in-out;
                -moz-transition: all 0.1s ease-in-out;
                -ms-transition: all 0.1s ease-in-out;
                transition: all 0.1s ease-in-out;     
            }    

            .bordered td, .bordered th {
                border-left: 1px solid #ccc;
                border-top: 1px solid #ccc;
                padding: 10px;
                text-align: left;    
            }

            .bordered th {
                background-color: #dce9f9;
                background-image: -webkit-gradient(linear, left top, left bottom, from(#ebf3fc), to(#dce9f9));
                background-image: -webkit-linear-gradient(top, #ebf3fc, #dce9f9);
                background-image:    -moz-linear-gradient(top, #ebf3fc, #dce9f9);
                background-image:     -ms-linear-gradient(top, #ebf3fc, #dce9f9);
                background-image:      -o-linear-gradient(top, #ebf3fc, #dce9f9);
                background-image:         linear-gradient(top, #ebf3fc, #dce9f9);
                -webkit-box-shadow: 0 1px 0 rgba(255,255,255,.8) inset; 
                -moz-box-shadow:0 1px 0 rgba(255,255,255,.8) inset;  
                box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;        
                border-top: none;
                text-shadow: 0 1px 0 rgba(255,255,255,.5); 
            }

            .bordered td:first-child, .bordered th:first-child {
                border-left: none;
            }

            .bordered th:first-child {
                -moz-border-radius: 6px 0 0 0;
                -webkit-border-radius: 6px 0 0 0;
                border-radius: 6px 0 0 0;
            }

            .bordered th:last-child {
                -moz-border-radius: 0 6px 0 0;
                -webkit-border-radius: 0 6px 0 0;
                border-radius: 0 6px 0 0;
            }

            .bordered th:only-child{
                -moz-border-radius: 6px 6px 0 0;
                -webkit-border-radius: 6px 6px 0 0;
                border-radius: 6px 6px 0 0;
            }

            .bordered tr:last-child td:first-child {
                -moz-border-radius: 0 0 0 6px;
                -webkit-border-radius: 0 0 0 6px;
                border-radius: 0 0 0 6px;
            }

            .bordered tr:last-child td:last-child {
                -moz-border-radius: 0 0 6px 0;
                -webkit-border-radius: 0 0 6px 0;
                border-radius: 0 0 6px 0;
            }



            /*----------------------*/

            .zebra td, .zebra th {
                padding: 10px;
                border-bottom: 1px solid #f2f2f2;    
            }

            .zebra tbody tr:nth-child(even) {
                background: #f5f5f5;
                -webkit-box-shadow: 0 1px 0 rgba(255,255,255,.8) inset; 
                -moz-box-shadow:0 1px 0 rgba(255,255,255,.8) inset;  
                box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;        
            }

            .zebra th {
                text-align: left;
                text-shadow: 0 1px 0 rgba(255,255,255,.5); 
                border-bottom: 1px solid #ccc;
                background-color: #eee;
                background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5), to(#eee));
                background-image: -webkit-linear-gradient(top, #f5f5f5, #eee);
                background-image:    -moz-linear-gradient(top, #f5f5f5, #eee);
                background-image:     -ms-linear-gradient(top, #f5f5f5, #eee);
                background-image:      -o-linear-gradient(top, #f5f5f5, #eee); 
                background-image:         linear-gradient(top, #f5f5f5, #eee);
            }

            .zebra th:first-child {
                -moz-border-radius: 6px 0 0 0;
                -webkit-border-radius: 6px 0 0 0;
                border-radius: 6px 0 0 0;  
            }

            .zebra th:last-child {
                -moz-border-radius: 0 6px 0 0;
                -webkit-border-radius: 0 6px 0 0;
                border-radius: 0 6px 0 0;
            }

            .zebra th:only-child{
                -moz-border-radius: 6px 6px 0 0;
                -webkit-border-radius: 6px 6px 0 0;
                border-radius: 6px 6px 0 0;
            }

            .zebra tfoot td {
                border-bottom: 0;
                border-top: 1px solid #fff;
                background-color: #f1f1f1;  
            }

            .zebra tfoot td:first-child {
                -moz-border-radius: 0 0 0 6px;
                -webkit-border-radius: 0 0 0 6px;
                border-radius: 0 0 0 6px;
            }

            .zebra tfoot td:last-child {
                -moz-border-radius: 0 0 6px 0;
                -webkit-border-radius: 0 0 6px 0;
                border-radius: 0 0 6px 0;
            }

            .zebra tfoot td:only-child{
                -moz-border-radius: 0 0 6px 6px;
                -webkit-border-radius: 0 0 6px 6px
                    /* border-radius: 0 0 6px 6px */
            }

        </style>
    </head>

    
    
    
    
    <%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.model.Register"%>
<%@page import="org.hibernate.controller.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%
            String seller = request.getParameter("seller");
            int user_id=0;
            Session s = HibernateUtil.getSession();
            Criteria crit = s.createCriteria(Register.class);
            crit.add(Restrictions.eq("username", seller));
            List<Register> list = crit.list();
            for (Register register : list) {
                user_id = register.getId();
            }
            
            
            
        %>
        <%@page import="org.hibernate.model.Register"%>

        <%@page import="org.hibernate.criterion.Restrictions"%>


        <%@page import="java.util.List"%>
        <%@page import="org.hibernate.model.Adpost"%>
        <%@page import="org.hibernate.Criteria"%>
        <%@page import="org.hibernate.controller.HibernateUtil"%>
        <%@page import="org.hibernate.Session"%>
<p>ADMIN:<span> <%=session.getAttribute("admin")%></span><a href="logout">  LOGOUT</a></p>
        <h2>Products Of The User:  <%=seller%></h2>        
        <table class="bordered">
            <thead>

                <tr>
                    <th>Id</th>
                    <th>Title</th>        
                    <th>Details</th>
                    <th>Quantity</th>
                    <th>price</th>
                    <th>category</th>
                    
                </tr>
            </thead>
        <%
            Criteria c = s.createCriteria(Adpost.class);
            c.add(Restrictions.eq("enable", 1));
            c.add(Restrictions.eq("user_id", user_id));
            //c.add(Restrictions.eq("name",(String)session.getAttribute("name")));
            List<Adpost> l = c.list();
            int id = 0;
            String title = null;
            String details = null;
            String quantity = null;
            int price = 0;
            int increment = 0;
            String image = null;
            String closingdate = null;
            String currentdate = null;
            String category = null;
            for (Adpost adpost : l) {
                id = adpost.getId();
                title = adpost.getTitle();
                details = adpost.getDetails();
                quantity = adpost.getQuantity();
                price = adpost.getPrice();
                increment = adpost.getIncrement();
                closingdate = adpost.getClosingdate();
                currentdate = adpost.getCurrentdate();
                image = adpost.getImage();
                category = adpost.getCategory();
        %>
        <!-- content-section-starts -->
            <tr>
                <td><%=id%> </td>
                <td><%=title%> </td>
                <td><%=details%> </td> 
                <td><%=quantity%> </td> 
                <td><%=price%> </td> 
                <td><%=category%> </td> 
            </tr>        
            
        <%}%>  
        </table>

         
<%} else {%>
<% response.sendRedirect("Login.jsp");
        }%>