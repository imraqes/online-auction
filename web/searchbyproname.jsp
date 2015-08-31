<%-- 
    Document   : searchbyproname
    Created on : Mar 31, 2015, 2:03:56 PM
    Author     : Rakesh Chand
--%>
<%
    if (session.getAttribute("user") != null) {%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            function validate(){
                if(document.searchForm.prod.value == ""){
                    alert("Enter product name");
                    document.searchForm.prod.focus();
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
                        <a href="index.jsp"><img src="images/logo.png" class="img-responsive" alt="" /></a>
                    </div>
                    <div class="queries">
                        <p>Questions? Call us !<span>+91-7869109420 </span><label>(11AM to 11PM)</label></p>
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
                            <li><a href="products.jsp">Products</a></li>|
                            <li class="active"><a href="searchbycat.jsp">Search</a></li>|
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
                                SEARCH BY
                            </li>
                        </ul>
                        
                        <div class="clearfix"></div>
                    </div>
                    <div class="account_grid">
                        <div class="col-md-6 login-left wow fadeInLeft" data-wow-delay="0.4s">
                            <h3>SEARCH BY</h3>
                            
                            <a class="acount-btn" href="searchbycat.jsp">SEARCH BY CATEGORY</a>
                            <a class="acount-btn" href="searchbysellername.jsp">SEARCH BY SELLER NAME</a>
                        </div>
                        <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s">
                            <h3>SEARCH BY PRODUCT NAME</h3>
                            

                            <form action="nameprod.jsp" method="post" name="searchForm" onsubmit="return(validate());">
                                <div>
                                    <span>PRODUCT NAME<label>*</label></span>
                                    <input type="text" name="prod" placeholder="Enter product name" required> 

                                </div>
                                
                                <input type="submit" value="SEARCH">
                            </form>


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












<%} else {%>
<% response.sendRedirect("Login.jsp");
    }%>