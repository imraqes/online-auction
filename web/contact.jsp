<%-- 
    Document   : contact
    Created on : Apr 8, 2015, 3:25:15 AM
    Author     : Rakesh Chand
--%>


<%
    if (session.getAttribute("user") != null) {%>


<!DOCTYPE html>
<html>
    <head><script>
            
            function validate(){
                
                
                if(document.contactform.email.value == ""){
                    alert("Please provide email");
                    document.contactform.email.focus();
                    return false;
                }
                if(document.contactform.subject.value == ""){
                    alert("Please provide subject");
                    document.contactform.subject.focus();
                    return false;
                }
                if(document.contactform.message.value == ""){
                    alert("Please provide message");
                    document.contactform.message.focus();
                    return false;
                }
            }
                    </script>

        
 


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
                        <a href="#"><img src="images/logo.png" class="img-responsive" alt="" /></a>
                    </div>
                    <div class="queries">
                        <p>Questions? Call us !<span>+91-7869109420 </span><label>(11AM to 11PM)</label></p>
                        <p>USER:<span> <%=session.getAttribute("user")%></span><a href="logout">  LOGOUT</a></p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="menu-bar">
                <div class="container">
                    <div class="top-menu">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>|
                            <li><a href="products.jsp">Products</a></li>|
                            <li><a href="searchbycat.jsp">Search</a></li>|
                            <li><a href="Adpost.jsp">Post New Advertisement</a></li>|
                            <li class="active"><a href="contact.jsp">contact</a></li>
                            <div class="clearfix"></div>
                        </ul>
                    </div>
                    <div class="login-section">
                        <ul>
                            <li><a href="profile.jsp">Profile</a></li>
                            <li><a href="#">Help</a></li>
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
                        <h3>Contact</h3>
                        <p>Home/Contact</p>
                    </div>
                </div>
                <div class="contact_top">
                    <div class="container">
                        <div class="col-md-6 contact_left wow fadeInRight" data-wow-delay="0.4s">
                            <h4>Contact Form</h4>
                            <p>Bilaspur</p>
                            <form action="sendMail.jsp" method="post" name="contactform" onsubmit="return(validate());">
                                <div class="form_details">
                                    <input type="hidden" name="username" value="<%=session.getAttribute("user")%>" ><br>                                   
                                    <input type="text" class="text" name="email" placeholder="Enter your email address"><br>                                   
                                    <input type="text" name="subject" class="text" value="Subject" onfocus="this.value = '';" onblur="if (this.value == '') {
                    this.value = 'Subject';
                }">
                                    <textarea value="Message" name="message" onfocus="this.value = '';" onblur="if (this.value == '') {
                    this.value = 'Message';
                }">Message</textarea>
                                    <div class="clearfix"> </div>
                                    <div class="sub-button wow swing animated" data-wow-delay= "0.4s">
                                        <input name="submit" type="submit" value="Send message">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-6 company-right wow fadeInLeft" data-wow-delay="0.4s">
                            <div class="contact-map">
                                <iframe src=""> </iframe>
                            </div>

                            <div class="company-right">
                                <div class="company_ad">
                                    <h3>Contact Info</h3>
                                    <span>ABC</span>
                                    <address>
                                        <p>email:<a href="mail-to: imraqes@gmail.com.com">imraqes@gmail.com</a></p>
                                        <p>phone:  +91-7869109420</p>
                                        <p>KONI</p>
                                        <p>BILASPUR</p>

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