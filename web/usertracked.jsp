<%-- 
    Document   : usertracked
    Created on : Apr 8, 2015, 4:06:36 AM
    Author     : Rakesh Chand
--%>

<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.model.Register"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.controller.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%
    if (session.getAttribute("admin") != null) {%>



<%
        String seller = request.getParameter("seller");
        
    Session s = HibernateUtil.getSession();
    Criteria c = s.createCriteria(Register.class);
    //c.add(Restrictions.eq("enable", 1));
    c.add(Restrictions.eq("username", seller));
    List<Register> l = c.list();


    //String username = null;
    String name = null;
    String email = null;
    String contact = null;
    String occupation = null;
    String address = null;
    String image = null;

    for (Register register : l) {

        //username = register.getUsername();
        name = register.getName();
        email = register.getEmail();
        contact = register.getContactno();
        occupation = register.getOccupation();
        address = register.getAddress();
        image = register.getImage();
    }


%>




<!DOCTYPE html>
<html>
    <head>

        <style>
            input[type="button"] {
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
                        <p>Questions? Call us !<span>+91-7869109420 </span><label>(11AM to 11PM)</label></p>
                        <p>ADMIN:<span> <%=session.getAttribute("admin")%></span><a href="logout">  LOGOUT</a></p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="menu-bar">
                <div class="container">
                    <div class="top-menu">
                        <ul>
                            <li class="active"><a href="admin.jsp">Home</a></li>|
                            <li><a href="deleteproduct.jsp">Delete Product</a></li>|
                            <li><a href="notify.jsp">NOTIFY</a></li>|                            
                            <li><a href="enabledisable.jsp">ENABLE/DISABLE</a></li>|
                            <li><a href="usertrack.jsp">TRACK USER</a></li>
                            
                            <div class="clearfix"></div>
                        </ul>
                    </div>
                    <div class="login-section">
                        <ul>
                            
                            <div class="clearfix"></div>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!-- header-section-ends -->
            <div class="contact-section-page">
                <div class="contact-head">
                    <div class="container">
                        <h3>Profile</h3>
                        <p>Home/Profile</p>
                    </div>
                </div>
                <div class="contact_top">
                    <div class="container">
                        <div class="col-md-6 contact_left wow fadeInRight" data-wow-delay="0.4s">

                            <h4><%=name%></h4><br>

                            
                            <h4><input type="button" value="PRODUCTS BY THIS USER" onclick="window.location.href = 'prodseller2.jsp?seller=<%=seller%>'"></h4>
                        </div>
                        <div class="col-md-6 company-right wow fadeInLeft" data-wow-delay="0.4s">
                            <div class="contact-map">
                                <img src="UserPics/<%=image%>" class="img-responsive" alt="" /> 
                            </div>

                            <div class="company-right">
                                <div class="company_ad">
                                    <h3>Info</h3>
                                    <h4><%=name%></h4><br>
                                    <address>
                                        <p><label>Email-</label> <%=email%></p>
                                        <p><label>Contact-</label> <%=contact%></p>
                                        <p><label>Occupation-</label> <%=occupation%></p>
                                        <p><label>Address-</label> <%=address%></p>
                                    </address>
                                </div>
                            </div>	

                        </div>
                    </div>
                </div>

            </div>
            <!-- footer-section-starts -->
            <div class="footer">
                <div class="container">
                    <p class="wow fadeInLeft" data-wow-delay="0.4s">&copy; 2014  All rights  Reserved</p>
                </div>
            </div>
            <!-- footer-section-ends -->
            <script type="text/javascript">
            $(document).ready(function() {
                /*
                 var defaults = {
                 containerID: 'toTop', // fading element id
                 containerHoverID: 'toTopHover', // fading element hover id
                 scrollSpeed: 1200,
                 easingType: 'linear' 
                 };
                 */

                $().UItoTop({easingType: 'easeOutQuart'});

            });
            </script>
            <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

    </body>
</html>
<%} else {%>
<% response.sendRedirect("Login.jsp");
    }%>