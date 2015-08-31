<%-- 
    Document   : BidHistory
    Created on : Jan 14, 2015, 6:27:36 PM
    Author     : Raqesh Chand
--%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%
    if (session.getAttribute("user") != null) {%>
<b>User:</b> <%=session.getAttribute("user")%>
<a href="logout">  LOGOUT</a>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.model.*"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.controller.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>

<!DOCTYPE html>
<html>
    <head>


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

    <body>
        <h2>Bid History</h2>
        <table class="bordered">
            <thead>

                <tr>
                    <th>Title</th>        
                    <th>Quantity</th>
                    <th>Bid Amount</th>
                    <th>Date of Bid</th>
                    <th>Bidder Name</th>
                </tr>
            </thead>

            <%

                int ids = Integer.parseInt(request.getParameter("tit"));
                int id = 0;
                String cd = null;
                String user_bid = null;
                double pay = 0.0;
                SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
                Long todayEpoch = null;
                Long targetEpoch = null;
                double daysLeft = 0;
                Date date1 = null;
                int onquantity = 0;
                Date sdate = new Date();
                int price=0;
                Session s = HibernateUtil.getSession();
                Criteria crit = s.createCriteria(Adpost.class);
                crit.add(Restrictions.eq("id", ids));
                List<Adpost> list = crit.list();
                for (Adpost adpost : list) {
                    id = adpost.getId();
                    price = adpost.getPrice();
                }


                Criteria c = s.createCriteria(Bid.class);
                c.add(Restrictions.eq("adpost_id", id));
                List<Bid> l = c.list();
                String title_ad = null;
                String quantity = null;
                String date = null;
                int user_id = 0;
                int bidAmount = 0;
                String usern = null;
                int max = 0;
                for (Bid bd : l) {
                    title_ad = bd.getTitle_ad();
                    quantity = bd.getOnquantity();
                    bidAmount = bd.getBidAmount();
                    date = bd.getDate();
                    user_id = bd.getUser_bid_id();
                    usern = bd.getUser_bid_name();


                    if (bidAmount > max) {
                        max = bidAmount;
                    }


            %>    
            <tr>
                <td><%=title_ad%> </td>
                <td><%=quantity%> </td>
                <td><%=bidAmount%> </td> 
                <td><%=date%> </td> 
                <td><%=usern%> </td> 
            </tr>        
            <%}%>    
        </table>

        <br><br>
        <%

            Criteria crit1 = s.createCriteria(Adpost.class);
            crit1.add(Restrictions.eq("enable", 1));
            crit1.add(Restrictions.eq("id", ids));
            List<Adpost> list1 = crit1.list();
            for (Adpost adpost1 : list1) {
                cd = adpost1.getClosingdate();
                date1 = formatter.parse(cd);

                todayEpoch = sdate.getTime();
                targetEpoch = date1.getTime();
                daysLeft = Math.floor(((targetEpoch - todayEpoch) / (60 * 60 * 24)) / 1000);

                if (daysLeft == 0) {
                    adpost1.setEnable(0);
                    s.save(adpost1);
                    s.beginTransaction().commit();
                }
            }


            Criteria crit2 = s.createCriteria(Bid.class);
            crit2.add(Restrictions.eq("status", 1));
            crit2.add(Restrictions.eq("adpost_id", id));
            crit2.add(Restrictions.eq("bidAmount", max));
            List<Bid> list2 = crit2.list();
            for (Bid bid2 : list2) {
                onquantity = Integer.parseInt(bid2.getOnquantity());
                user_bid = bid2.getUser_bid_name();
            }

            pay = ((onquantity * max)+price);
            
        %>
        
        <%
            if (daysLeft <= 0) {
        %>

        <h1>WINNER = <%=max%></h1> 
        <h1>Payable by <%=user_bid%> rs.  <%=pay%></h1>
<input type="submit" value="PAY" />
        <%
        } else if (daysLeft >= 1) {
        %>

        <h1>MAXIMUM BID = <%=max%></h1> 
        <%
        } 
        %>
        
        
        <br><br>
        <input type="submit" value="BACK" onClick="history.go(-1);
                return true;">
        <br>
    </body>
</html>

<%} else {%>
<% response.sendRedirect("Login.jsp");
    }%>





