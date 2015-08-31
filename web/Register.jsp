<%-- 
    Document   : Register
    Created on : Jan 25, 2015, 1:15:22 PM
    Author     : Raqesh Chand
--%>

<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.model.Register"%>
<%@page import="org.hibernate.controller.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<!DOCTYPE html>
<html>
    <head>
<title>Online Auction</title>
<script>
            function validate(){
                if(document.registerForm.username.value == ""){
                    alert("Please provide username");
                    document.registerForm.username.focus();
                    return false;
                }
                if(document.registerForm.password.value == ""){
                    alert("Please provide password");
                    document.registerForm.password.focus();
                    return false;
                }
                if(document.registerForm.contactno.value == ""){
                    alert("Please provide contactno");
                    document.registerForm.contactno.focus();
                    return false;
                }
                if(document.registerForm.name.value == ""){
                    alert("Please provide name");
                    document.registerForm.name.focus();
                    return false;
                }
                if(document.registerForm.address.value == ""){
                    alert("Please provide address");
                    document.registerForm.address.focus();
                    return false;
                }
                if(document.registerForm.email.value == ""){
                    alert("Please provide email");
                    document.registerForm.email.focus();
                    return false;
                }
                if(document.registerForm.occupation.value == ""){
                    alert("Please provide occupation");
                    document.registerForm.occupation.focus();
                    return false;
                }
                if(document.registerForm.UserPic.value == ""){
                    alert("Please provide UserPic");
                    document.registerForm.UserPic.focus();
                    return false;
                }
            }
        </script>

        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />

        <script src="js/jquery.min.js"></script>

        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

        <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lobster+Two:400,400italic,700,700italic' rel='stylesheet' type='text/css'>

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
                        <a href="indexo.jsp"><img src="images/logo.png" class="img-responsive" alt="" /></a>
                    </div>
                    <div class="queries">
                        <p>Questions? Call us !<span>+91-7869109420</span><label>(11AM to 11PM)</label></p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="menu-bar">
                <div class="container">
                    <div class="top-menu">
                        <ul>
                            <li><a href="indexo.jsp">Home</a></li>|
                            <li><a href="products.jsp">Products</a></li>|
                            <li><a href="searchbycat.jsp">Search</a></li>|
                            <li><a href="Adpost.jsp">Post New Advertisement</a></li>|
                            <li><a href="contact.jsp">contact</a></li>
                            <div class="clearfix"></div>
                        </ul>
                    </div>
                    <div class="login-section">
                        <ul>
                            <li><a href="Login.jsp">Login</a>  </li> |
                            <li><a href="Register.jsp">Register</a> </li> |
                            <li><a href="#">Help</a></li>
                            <div class="clearfix"></div>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!-- header-section-ends -->
        <!-- content-section-starts -->
        <div class="content">
            <div class="main">
                <div class="container">
                    <div class="register">
                        <form method="post" name="registerForm" action="register" enctype="multipart/form-data" onsubmit="return(validate());"> 
                            <div class="register-top-grid">

                                <h3>PERSONAL INFORMATION</h3>

                                <div class="wow fadeInLeft" data-wow-delay="0.4s">
                                    <span>User Name<label>*</label></span>
                                    <input type="text" name="username" placeholder="Enter username"> 
                                </div>

                                <div class="wow fadeInRight" data-wow-delay="0.4s">
                                    <span>Contact Number<label>*</label></span>
                                    <input type="text" name="contactno" placeholder="Enter contact no."> 
                                </div>

                                <div class="wow fadeInRight" data-wow-delay="0.4s">
                                    <span>Name<label>*</label></span>
                                    <input type="text" name="name" placeholder="Enter your full name"> 
                                </div>


                                <div class="wow fadeInRight" data-wow-delay="0.4s">
                                    <span>Address<label>*</label></span>
                                    <textarea name="address"  placeholder="Enter your shipping address"></textarea>
                                </div>


                                <div class="wow fadeInRight" data-wow-delay="0.4s">
                                    <span>Email Address<label>*</label></span>
                                    <input type="email" name="email"  placeholder="Enter your email here"> 
                                </div>


                                <div class="wow fadeInRight" data-wow-delay="0.4s">
                                    <span>Occupation<label>*</label></span>
                                    <input type="text" name="occupation" placeholder="Enter your occupation"> 
                                </div>

                                <div class="wow fadeInRight" data-wow-delay="0.4s">
                                    <span>Password<label>*</label></span>
                                    <input type="password" name="password"  placeholder="Enter password"> 
                                </div>

                                <div class="wow fadeInRight" data-wow-delay="0.4s">
                                    <span>Upload your Photo<label>*</label></span>
                                    <input type="file" name="UserPic" placeholder="upload photo"/>
                                </div>
                            </div>
                        
                        <div class="clearfix"> </div>
                        
                                <input type="submit" value="Register">
                                <div class="clearfix"> </div>
                        
                        </form>
                    </div>
                </div>
            </div>
            <!-- content-section-ends -->
            <!-- footer-section-starts -->
            <div class="footer"> 
                <div class="container">
                    <p class="wow fadeInLeft" data-wow-delay="0.4s">&copy; 2015  All rights  Reserved </p>
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