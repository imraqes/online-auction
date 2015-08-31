<%-- 
    Document   : prodseller
    Created on : Mar 31, 2015, 2:39:05 PM
    Author     : Rakesh Chand
--%>


<%@page import="org.hibernate.model.Register"%>
<%
    if (session.getAttribute("user") != null) {%>
<!DOCTYPE html>
<html>
    <head>
        <title>Online Auction</title>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- Custom Theme files -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--webfont-->
        <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lobster+Two:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
        <!--Animation-->
        <script src="js/wow.min.js"></script>
        <link href="css/animate.css" rel='stylesheet' type='text/css' />
        <script>
            new WOW().init();
        </script>
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function($) {
                $(".scroll").click(function(event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1200);
                });
            });
        </script>
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
        </style>
    </head>
    <body>
        <!-- header-section-starts -->
        <div class="header">
            <div class="container">
                <div class="top-header">
                    <div class="logo">
                        <a href="index.jsp"><img src="images/logo.png" class="img-responsive" alt="" /></a>
                    </div>
                    <div class="queries">
                        <p>Questions? Call us!<span>1800-0000-7777 </span><label>(11AM to 11PM)</label></p>
                        <p>User <span><%=session.getAttribute("user")%></span><a href="logout">  LOGOUT</a></p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="menu-bar">
                <div class="container">
                    <div class="top-menu">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>|
                            <li class="active"><a href="products.jsp">Products</a></li>|
                            <li><a href="searchbycat.jsp">Search</a></li>|
                            <li><a href="Adpost.jsp">Post New Advertisement</a></li>|
                            <li><a href="contact.jsp">contact</a></li>
                            <div class="clearfix"></div>
                        </ul>
                    </div>
                    <div class="login-section">
                        <ul>
                            <li><a href="outofbid.jsp">Out Of Bid</a></li>
                            <li><a href="cars.jsp">Cars</a></li>
                            <li><a href="bikes.jsp">Bikes</a></li>
                            <li><a href="profile.jsp">Profile</a></li>
                            <li><a href="#">Help</a></li>
                            <div class="clearfix"></div>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>		
        </div>
        <%
            int user_id = Integer.parseInt(request.getParameter("seller"));
            String seller=null;
            Session s = HibernateUtil.getSession();
            Criteria crit = s.createCriteria(Register.class);
            crit.add(Restrictions.eq("id", user_id));
            List<Register> list = crit.list();
            for (Register register : list) {
                seller = register.getName();
            }
            
            
            
        %>

        <div class="dreamcrub">

            <ul class="breadcrumbs">
                <li class="home">
                    <a href="index.jsp" title="Go to Home Page">Home>Products by SELLER</a>&nbsp;
                    <span>&gt;</span>
                </li>
                <li class="women">
                    <%=seller%>
                </li>
            </ul>

            <div class="clearfix"></div>
        </div>

        <!-- header-section-ends -->
        <%@page import="org.hibernate.criterion.Restrictions"%>


        <%@page import="java.util.List"%>
        <%@page import="org.hibernate.model.Adpost"%>
        <%@page import="org.hibernate.Criteria"%>
        <%@page import="org.hibernate.controller.HibernateUtil"%>
        <%@page import="org.hibernate.Session"%>
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
        <div class="Popular-Restaurants-content">
            <div class="Popular-Restaurants-grids">
                <div class="container">

                    <div class="Popular-Restaurants-grid wow fadeInRight" data-wow-delay="0.4s">
                        <div class="col-md-3 restaurent-logo">
                            <img src="ProductPics/<%=image%>" class="img-responsive" alt="" />
                        </div>
                        <div class="col-md-2 restaurent-title">
                            <div class="logo-title">
                                <h4><a href="#"><%=title%></a></h4>
                            </div>
                            <div class="rating">
                                <span>Details-</span>
                                <span><%=details%></span>

                            </div>
                        </div>
                        <div class="col-md-7 buy">
                            <span>Rs.<%=price%></span>

                            <input type="button" value="Bid" onclick="window.location.href = 'Bid.jsp?id=<%=id%>&title=<%=title%>&details=<%=details%>&quantity=<%=quantity%>&price=<%=price%>&increment=<%=increment%>&image=<%=image%>&closingdate=<%=closingdate%>&registereddate=<%=currentdate%>&user_id=<%=user_id%>'" >

                        </div>
                        <div class="clearfix"></div>

                    </div>
                </div>
            </div>
        </div>
        <!-- content-section-ends -->
        <%}%>
        <!-- footer-section-starts -->
        <div class="footer">
            <div class="container">
                <p class="wow fadeInLeft" data-wow-delay="0.4s">&copy; 2015  All rights  Reserved </p>
            </div>
        </div>
        <!-- footer-section-ends -->
        <script type="text/javascript">
            $(document).ready(function() {
                $().UItoTop({easingType: 'easeOutQuart'});
            });
        </script>
        <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
    </body>
</html>
<%} else {%>
<% response.sendRedirect("Login.jsp");
    }%>