<%-- 
    Document   : deleteproduct
    Created on : Mar 28, 2015, 4:32:52 AM
    Author     : Rakesh Chand
--%>


<%@page import="org.hibernate.model.Register"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.model.Adpost"%>
<%@page import="org.hibernate.controller.HibernateUtil"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>

<%
    if (session.getAttribute("admin") != null) {%>


        <style>
            input[type="submit"] {
                background: #E24425;
                color: #FFF;
                font-size: 1em;
                padding: 0.7em 1.2em;
                transition: 0.5s all;
                -webkit-transition: 0.5s all;
                -moz-transition: 0.5s all;
                -o-transition: 0.5s all;
                display: inline-block;
                text-transform: uppercase;
                border:none;
                outline:none;
            }
            body {
                width: 600px;
                margin: 20px;
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
            img{
                width: 50px;
                height: 75px;
            }

        </style>
        
        
        
        <body>
            <p>ADMIN:<span> <%=session.getAttribute("admin")%></span><a href="logout">  LOGOUT</a></p>
<table class="bordered">
            <thead>

                <tr>
                    <th>ID</th>        
                    <th>TITLE</th>        
                    <th>QUANTITY</th>
                    <th>DETAILS</th>        
                    <th>PRICE</th>
                    <th>INCREMENT</th>
                    <th>CLOSING DATE</th>
                    <th>REGISTERED DATE</th>
                    <th>CATEGORY</th>
                    <th>IMAGE</th>
                    <th>DELETE</th>
                </tr>
            </thead>


<%
    Session s = HibernateUtil.getSession();
    Criteria c = s.createCriteria(Adpost.class);
    //c.add(Restrictions.eq("enable", 1));
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
    int user_id = 0;
    String username=null;
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
        user_id=adpost.getUser_id();
        
        Criteria crit = s.createCriteria(Register.class);
        crit.add(Restrictions.eq("id", user_id));
        List<Register> list = crit.list();
        for (Register register : list) {
            username=register.getUsername();
        }
           
    %>

<tr>
                <td><%=id%> </td>
                <td><%=title%> </td>
                <td><%=quantity%> </td> 
                <td><%=details%> </td> 
                <td><%=price%> </td> 
                <td><%=increment%> </td> 
                <td><%=closingdate%> </td> 
                <td><%=currentdate%> </td> 
                <td><%=category%> </td> 
                <td><img src="ProductPics/<%=image%>"/></td> 
                <td>
                    <a href="delete.jsp?id=<%=id%>">
                        DELETE
                    </a>
                </td>
            </tr>        
            <%}%>    
        </table>

        <br><br>    
        </body>
        
        
        <input type="submit" value="BACK" onClick="history.go(-1);
                return true;">
        
        <%} else {%>
<% response.sendRedirect("Login.jsp");
        }%>