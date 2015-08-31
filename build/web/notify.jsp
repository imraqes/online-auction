<%-- 
    Document   : notify
    Created on : Apr 2, 2015, 5:01:04 AM
    Author     : Rakesh Chand
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.model.*"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.controller.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%
    if (session.getAttribute("admin") != null) {%>
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


    </head>

    <body>
        <h2>ALL PRODUCTS</h2>
        <p>ADMIN:<span> <%=session.getAttribute("admin")%></span><a href="logout">  LOGOUT</a></p>
        <table class="bordered">
            <thead>
                <tr>
                    <th>ID</th>        
                    <th>TITLE</th>        
                    <th>DETAILS</th>        
                    <th>QUANTITY</th>
                    <th>PRICE</th>
                    <th>INCREMENT</th>
                    <th>CLOSING DATE</th>
                    <th>REGISTERED DATE</th>        
                    <th>CATEGORY</th>        
                    <th>SELLER</th>        
                    <th>DAYS LEFT</th>        
                    <th>MAX BID</th>
                    <th>MAX BIDDER</th>
                    <th>PAYABLE</th>
                    <th>NOTIFY SELLER/BIDDER</th>
                    
                </tr>
            </thead>
            <%
                Session s = HibernateUtil.getSession();
                Criteria c = s.createCriteria(Adpost.class);
                //c.add(Restrictions.eq("enable", 1));
                List<Adpost> l = c.list();
                int id = 0;
                String title = null;
                String details = null;
                String quantity = null;
                int price = 0;
                int increment = 0;
                String closingdate = null;
                String currentdate = null;
                String category = null;
                int user_id = 0;
                int bid_id=0;
                SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
                Long todayEpoch = null;
                Long targetEpoch = null;
                double daysLeft = 0;
                Date date1 = null;
                String name = null;
                Date sdate = new Date();
                int onquantity1 = 0;
                int t=0;
                String user_bid = null;

                for (Adpost adpost : l) {
                    id = adpost.getId();
                    title = adpost.getTitle();
                    details = adpost.getDetails();
                    quantity = adpost.getQuantity();
                    price = adpost.getPrice();
                    increment = adpost.getIncrement();
                    closingdate = adpost.getClosingdate();
                    currentdate = adpost.getCurrentdate();
                    category = adpost.getCategory();
                    user_id = adpost.getUser_id();
                    date1 = formatter.parse(closingdate);

                    todayEpoch = sdate.getTime();
                    targetEpoch = date1.getTime();
                    daysLeft = Math.floor(((targetEpoch - todayEpoch) / (60 * 60 * 24)) / 1000);



                    Criteria crit = s.createCriteria(Register.class);
                    crit.add(Restrictions.eq("id", user_id));
                    List<Register> list = crit.list();
                    for (Register register : list) {
                        name = register.getName();
                    }

                    Criteria cr = s.createCriteria(Bid.class);
                    cr.add(Restrictions.eq("adpost_id", id));
                    List<Bid> lr = cr.list();

                    int onquantity = 0;
                    int bidAmount = 0;
                    int max = 0;
                    
                    for (Bid bd : lr) {
                        onquantity = Integer.parseInt(bd.getOnquantity());
                        bidAmount = bd.getBidAmount();



                        if (bidAmount > max) {
                            max = bidAmount;
                        }
                        
                    }


                    Criteria crit2 = s.createCriteria(Bid.class);
                    
                    crit2.add(Restrictions.eq("adpost_id", id)).add(Restrictions.eq("bidAmount", max));
                    //crit2.add(Restrictions.eq("bidAmount", max));
                    List<Bid> list2 = crit2.list();
                    for (Bid bid2 : list2) {
                        onquantity1 = Integer.parseInt(bid2.getOnquantity());
                        user_bid = bid2.getUser_bid_name();
                        
                     Criteria crit3 = s.createCriteria(Register.class);
                    crit3.add(Restrictions.eq("username", user_bid));
                    List<Register> list3 = crit3.list();
                    for (Register register : list3) {
                        bid_id = register.getId();
                    }   
                        
                        
                    }
                    t=((onquantity1 * bidAmount)+price);


            %>


            <tr>
            <form action="notifysellerbidder" method="post">
                <td><%=id%></td>
                
                <td><input type="text" name="title" value="<%=title%>"></td>
                <td><%=details%><input type="hidden" name="details" value="<%=details%>"></td>
                <td><%=quantity%><input type="hidden" name="quantity" value="<%=quantity%>"></td>
                <td><%=price%><input type="hidden" name="price" value="<%=price%>"></td>
                <td><%=increment%><input type="hidden" name="increment" value="<%=increment%>"></td>
                <td><%=closingdate%><input type="hidden" name="closingdate" value="<%=closingdate%>"></td>
                <td><%=currentdate%><input type="hidden" name="currentdate" value="<%=currentdate%>"></td>
                <td><%=category%><input type="hidden" name="category" value="<%=category%>"></td>
                <td><%=name%><input type="hidden" name="seller" value="<%=user_id%>"></td>
                <td><%=daysLeft + 1%></td>
                <td><%=max%></td>
                <td><%=user_bid%><input type="hidden" name="bidder" value="<%=bid_id%>"></td>
                <td><%=t%><input type="hidden" name="payble" value="<%=t%>"></td>
                <td><input type="submit" value="SELLER/BIDDER NOTIFY"></td>
      
                </form>
            </tr>        
            <%}%>
        </table>
        <br><br> 
    </body>
</html>
<%} else {%>
<% response.sendRedirect("Login.jsp");
        }%>