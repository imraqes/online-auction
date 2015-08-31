<%-- 
    Document   : admin
    Created on : Mar 28, 2015, 4:00:07 AM
    Author     : Rakesh Chand
--%>

<%
    if (session.getAttribute("admin") != null) {%>


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