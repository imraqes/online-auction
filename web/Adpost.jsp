<%@page import="org.hibernate.model.Category"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.controller.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    if (session.getAttribute("user") != null) {%>

    

<s:head/>

<html>
    <head>
        <script>
            
            function validate(){
            
               var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth(); //January is 0!
mm=mm+1;
    var yyyy = today.getFullYear();
   var p ;
   var q;
   var r;
     if(document.adpostForm.closingdate.value.charAt(1) == "/"){
          alert("please enter zero before day");
           document.adpostForm.username.focus();
                    return false;
     }
     if(document.adpostForm.closingdate.value.charAt(4) == "/"){
          alert("please enter zero before month");
           document.adpostForm.username.focus();
                    return false;
     }
    
    if(document.adpostForm.closingdate.value.charAt(0) == "0"){
        p=document.adpostForm.closingdate.value.charAt(1);
      
        
    } 
    else 
        {
        p=document.adpostForm.closingdate.value.charAt(0)+document.adpostForm.closingdate.value.charAt(1);
       
        }
        if(document.adpostForm.closingdate.value.charAt(3) == "0"){
        q=document.adpostForm.closingdate.value.charAt(4);
        
        }
        
    
    else 
        {
      
    q=document.adpostForm.closingdate.value.charAt(3)+document.adpostForm.closingdate.value.charAt(4);
     
        }
        r=document.adpostForm.closingdate.value.charAt(6)+document.adpostForm.closingdate.value.charAt(7)+document.adpostForm.closingdate.value.charAt(8)+document.adpostForm.closingdate.value.charAt(9);
    if(r < yyyy)
        {
            alert("enter currect year");
        }
        if(r==yyyy && q<mm ){
             alert("enter current month or month after curent month");
        }
        if(r==yyyy && q==mm && p<dd){
           alert("enter date after current date "); 
        }
        
        
           
           
             
 
    
                if(document.adpostForm.username.value == ""){
                    alert("Please provide username");
                    document.adpostForm.username.focus();
                    return false;
                }
                if(document.adpostForm.title.value == ""){
                    alert("Please provide title");
                    document.adpostForm.title.focus();
                    return false;
                }
                if(document.adpostForm.details.value == ""){
                    alert("Please provide details");
                    document.adpostForm.details.focus();
                    return false;
                }
                if(document.adpostForm.closingdate.value == ""){
                    alert("Please provide closingdate");
                    document.adpostForm.closingdate.focus();
                    return false;
                }
                if(document.adpostForm.quantity.value == ""){
                    alert("Please provide quantity");
                    document.adpostForm.quantity.focus();
                    return false;
                }
                if(document.adpostForm.price.value == ""){
                    alert("Please provide price");
                    document.adpostForm.price.focus();
                    return false;
                }
                if(document.adpostForm.category.value == ""){
                    alert("Please provide category");
                    document.adpostForm.category.focus();
                    return false;
                }
                if(document.adpostForm.AdpostPic.value == ""){
                    alert("Please provide one photo of your product");
                    document.adpostForm.AdpostPic.focus();
                    return false;
                }
            }
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
                            <li><a href="products.jsp">Products</a></li>|
                            <li><a href="searchbycat.jsp">Search</a></li>|
                            <li class="active"><a href="Adpost.jsp">Post New Advertisement</a></li>|
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
                        <h3>Post New Advertisement of Your Product</h3>

                    </div>
                    <div class="col-md-6 order-form-grids">

                        <div class="order-form-grid  wow fadeInLeft" data-wow-delay="0.4s">
                            <h5>Product Information</h5>

                            <form  action="add" method="post" name="adpostForm" enctype="multipart/form-data" onsubmit="return(validate());">

                                <span>User</span></br>
                                <input type="text" class="text" name="username" readonly="true" value="<%=session.getAttribute("user")%>"><br>

                                <span>Title</span></br>
                                <input type="text" class="text" name="title" placeholder="Enter title of product"><br>

                                <span>Description</span></br>
                                <textarea name="details" name="details"  placeholder="Enter 500 words details"></textarea><br>


                                <span>Closing Date</span></br>
                                <input type="text" class="text" name="closingdate"  placeholder="i.e. DD/MM/YYYY"><br>

                                <span>Quantity</span></br>
                                <input type="text" class="text" name="quantity" placeholder="how many items "><br>

                                <span>Price</span></br>
                                <input type="text" class="text" name="price" placeholder="price for one item"><br>


                                <span>Select Category</span>
                                <div class="dropdown-button">           			
                                    <select class="dropdown" tabindex="9" data-settings='{"wrapperClass":"flat"}' name="category">
                                        <option value="">---Select Category---</option>	
                                        <option value="car">car</option>
                                        <option value="bikes">bikes</option>
                                        <option value="home/villa">home/villa</option>
                                    </select> 
                                </div>

                                <span>Upload One Image of your product</span>
                                <input type="file" name="AdpostPic"/>

                                    <br><br>

                                <div class="wow swing animated" data-wow-delay= "0.4s">
                                    <input type="submit" value=" Post Now ">
                                </div>


                            </form>
                        </div>
                    </div>
                    <div class="col-md-6 ordering-image wow bounceIn" data-wow-delay="0.4s">
                        <img src="images/order.jpg" class="img-responsive" alt="" />
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