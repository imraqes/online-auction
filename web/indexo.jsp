<%-- 
    Document   : indexo
    Created on : Jan 28, 2015, 2:11:06 PM
    Author     : Raqesh Chand
--%>

<html>
    <head>

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
    </head>
    <body>

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
                            <li class="active"><a href="index.jsp">Home</a></li>|
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
                    <!-- Special -->



                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="banner wow fadeInUp" data-wow-delay="0.4s" id="Home">
                <div class="container">
                    <div class="banner-info">

                    </div>
                </div>
            </div>
        </div>




        <!-- header-section-ends -->
        <!-- content-section-starts -->
        <div class="content">


            <div class="ordering-section" id="Order">
                <div class="container">
                    <div class="ordering-section-head text-center wow bounceInRight" data-wow-delay="0.4s">
                        <h3>BID SAVE - WIN BIG</h3>
                        <div class="dotted-line">
                            <h4>Just 4 steps to follow</h4>
                        </div>
                    </div>
                    <div class="ordering-section-grids">
                        <div class="col-md-3 ordering-section-grid">
                            <div class="ordering-section-grid-process wow fadeInRight" data-wow-delay="0.4s"">
                                <i class="one"></i><br>
                                <i class="one-icon"></i>
                                <p>Choose <span>Your Item</span></p>
                                <label></label>
                            </div>
                        </div>
                        <div class="col-md-3 ordering-section-grid">
                            <div class="ordering-section-grid-process wow fadeInRight" data-wow-delay="0.4s"">
                                <i class="two"></i><br>
                                <i class="four-icon"></i>
                                <p>Bid on it<span>For Highest</span></p>
                                <label></label>
                            </div>
                        </div>
                        <div class="col-md-3 ordering-section-grid">
                            <div class="ordering-section-grid-process wow fadeInRight" data-wow-delay="0.4s"">
                                <i class="three"></i><br>
                                <i class="three-icon"></i>
                                <p>Pay   <span> online</span></p>
                                <label></label>
                            </div>
                        </div>
                        <div class="col-md-3 ordering-section-grid">
                            <div class="ordering-section-grid-process wow fadeInRight" data-wow-delay="0.4s"">
                                <i class="four"></i><br>
                                <i class="four-icon"></i>
                                <p>Enjoy <span>Our Service</span></p>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>






















            <div class="service-section-bottom-row">
                <div class="container">
                    <div class="col-md-4 service-section-bottom-grid wow bounceIn "data-wow-delay="0.2s">
                        <div class="icon">
                            <img src="images/icon1.jpg" class="img-responsive" alt="" />
                        </div>
                        <div class="icon-data">
                            <h4>100% Service Guarantee</h4>
                            <p>100% Service Guarantee</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-4 service-section-bottom-grid wow bounceIn "data-wow-delay="0.2s">
                        <div class="icon">
                            <img src="images/icon2.jpg" class="img-responsive" alt="" />
                        </div>
                        <div class="icon-data">
                            <h4>Fully Secure Payment</h4>
                            <p>COMING SOON</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-4 service-section-bottom-grid wow bounceIn "data-wow-delay="0.2s">
                        <div class="icon">
                            <img src="images/icon3.jpg" class="img-responsive" alt="" />
                        </div>
                        <div class="icon-data">
                            <h4>Track Your Order</h4>
                            <p>COMING SOON</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
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
