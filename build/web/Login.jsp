<%-- 
    Document   : Login
    Created on : Jan 14, 2015, 2:31:31 PM
    Author     : Raqesh Chand
--%>

    
    
    
<!DOCTYPE html>
<html>
    <head>
        <script>
            function validate(){
                if(document.loginForm.user.value == ""){
                    alert("Please provide username");
                    document.loginForm.user.focus();
                    return false;
                }
                if(document.loginForm.pass.value == ""){
                    alert("Please provide password");
                    document.loginForm.pass.focus();
                    return false;
                }
            }
        </script>
        
        
        
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
                        <p>Questions? Call us !<span>+91-7869109420 </span><label>(11AM to 11PM)</label></p>
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
            <div class="container">
                <div class="login-page">
                    <div class="dreamcrub">
                        <ul class="breadcrumbs">
                            <li class="home">
                                <a href="index.jsp" title="Go to Home Page">Home</a>&nbsp;
                                <span>&gt;</span>
                            </li>
                            <li class="women">
                                Login
                            </li>
                        </ul>
                        <ul class="previous">
                            <li><a href="index.jsp">Back to Previous Page</a></li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="account_grid">
                        <div class="col-md-6 login-left wow fadeInLeft" data-wow-delay="0.4s">
                            <h3>NEW CUSTOMERS</h3>
                            <p>By creating an account with our website, you will be able to move through the checkout process faster, you can upload new items for auction and bid on items by category.</p>
                            <a class="acount-btn" href="Register.jsp">Create an Account</a>
                        </div>
                        <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s">
                            <h3>REGISTERED CUSTOMERS</h3>
                            <p>If you have an account with us, please log in.</p>

                            <form action="login" method="post" name="loginForm" onsubmit="return(validate());">
                                <div>
                                    <span>User Name<label>*</label></span>
                                    <input type="text" name="user" placeholder="Enter username" required> 
                                </div>
                                <div>
                                    <span>Password<label>*</label></span>
                                    <input type="password" name="pass" placeholder="Enter password" required> 
                                </div>
                                <input type="submit" value="Login">
                            </form>
<a class="acount-btn" href="forgot.jsp">Forgot Password</a>

                        </div>	
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
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












