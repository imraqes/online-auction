<%-- 
    Document   : Bid
    Created on : Jan 14, 2015, 5:47:16 PM
    Author     : Raqesh Chand
--%>


<%@page import="org.hibernate.Criteria"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.model.Register"%>
<%@page import="org.hibernate.controller.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page errorPage="error_page.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    if (session.getAttribute("user") != null) {%>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    int user_id = Integer.parseInt(request.getParameter("user_id"));
    String title = request.getParameter("title");
    String details = request.getParameter("details");
    String quantity = request.getParameter("quantity");
    int price = Integer.parseInt(request.getParameter("price"));
    int increment = Integer.parseInt(request.getParameter("increment"));
    String image = request.getParameter("image");
    String closingdate = request.getParameter("closingdate");
    String currentdate = request.getParameter("registereddate");
    //String seller = null;
    
    int onquantity = Integer.parseInt(quantity);
    
    


%>






<html>
    <head>

<script>
            function validate(){
                  
               if(document.bidForm.bid.value == ""){
                    alert("Please provide your bid");
                    document.bidForm.bid.focus();
                    return false;
                }
                 else {
              if(document.bidForm.bid.value < <%=increment%> ){
                    
                    alert("Please provide bid value greater than or equal to minimum increment");
                     document.bidForm.bid.focus();
                      return false;
            }
            }
            }
                
               
        </script>


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
        <title>Online Auction</title>
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
        <script src="js/jquery.carouFredSel-6.1.0-packed.js"></script>
        <script src="js/tms-0.4.1.js"></script>
        <script>
            $(window).load(function() {
                $('.slider')._TMS({
                    show: 0,
                    pauseOnHover: false,
                    prevBu: '.prev',
                    nextBu: '.next',
                    playBu: false,
                    duration: 800,
                    preset: 'fade',
                    pagination: true, //'.pagination',true,'<ul></ul>'
                    pagNums: false,
                    slideshow: 8000,
                    numStatus: false,
                    banners: false,
                    waitBannerAnimation: false,
                    progressBar: false
                })
            });

            $(window).load(
                    function() {
                        $('.carousel1').carouFredSel({auto: false, prev: '.prev', next: '.next', width: 960, items: {
                                visible: {min: 1,
                                    max: 4
                                },
                                height: 'auto',
                                width: 240,
                            }, responsive: false,
                            scroll: 1,
                            mousewheel: false,
                            swipe: {onMouse: false, onTouch: false}});


                    });

        </script>
        <script src="js/jquery.easydropdown.js"></script>
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
                            <li class="active"><a href="products.jsp">Products</a></li>|
                            <li><a href="searchbycat.jsp">Search</a></li>|
                            <li><a href="Adpost.jsp">Post New Advertisement</a></li>|
                            <li><a href="contact.jsp">contact</a></li>
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
        </div>
        <!-- header-section-ends -->
        <div class="order-section-page">
            <div class="ordering-form">
                <div class="container">
                    
                    <div class="order-form-head text-center wow bounceInLeft" data-wow-delay="0.4s">
                        <h3><%=title%> Details</h3>

                    </div>

                    <div class="col-md-6 order-form-grids">

                        <div class="order-form-grid  wow fadeInLeft" data-wow-delay="0.4s">

                            <h5> Bid Here on Products</h5>
                            <form action="bid" method="post" enctype="multipart/form-data" onsubmit="return(validate());" name="bidForm">
                                <input type="hidden" class="text" name="usern" readonly="true" value="<%=session.getAttribute("user")%>">
                                <input type="hidden" class="text" name="title_ad" value="<%=title%>" readonly="true"><br>
                                <label>Quantity Available:-<span><%=quantity%></span></label></br>
                                <input type="hidden" class="text" name="quantity" value="<%=quantity%>" readonly="true"><br>
                                <label>Price of the Product:-<span><%=price%></span></label></br>
                                <br>
                                <label>Minimum Increment:- <%=increment%></label></br>
                                <input type="hidden" class="text" name="increment" value="<%=increment%>" readonly="true"><br>
                                <label>Closing Date of Auction:- <span><%=closingdate%></span></label></br>
                                <br>
                                <label>Registered Date of Auction:-<span> <%=currentdate%></span></label></br>
                                <br>
                                <span>Want to bid on how many items</span></br>
                                <div class="dropdown-button">           			
                                    <select class="dropdown" tabindex="9" data-settings='{"wrapperClass":"flat"}' name="onquantity">
                                        <option value="">---Select---</option>	
                                        <% for (int i = 1; i <= onquantity; i++) {%>
                           <option value="<%=i%>"><%=i%></option>
                            <%}%>
                                    </select> 
                                </div>
                                
                                <span>Place Bid</span></br>
                                <input type="text" class="text" name="bid" placeholder="place your bid here"><br>
                                <div class="wow swing animated" data-wow-delay= "0.4s">
                                    <input type="submit" value=" Bid Now ">
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-6 ordering-image wow bounceIn" data-wow-delay="0.4s">

                        <h4><input type="button" value="ALL BIDS OF THIS PRODUCT" onclick="window.location.href = 'BidHistory.jsp?tit=<%=id%>'"></h4>
                        <br><h4><input type="button" value="OTHER PRODUCTS BY THIS SELLER" onclick="window.location.href = 'prodseller.jsp?seller=<%=user_id%>'"></h4>
                        <br><h4><input type="button" value="SELLER DETAILS" onclick="window.location.href = 'seller.jsp?seller=<%=user_id%>'"></h4>
                        <br><img src="ProductPics/<%=image%>" height="300px" width="350px" class="img-responsive" alt="" />
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