<%-- 
    Document   : usertrack
    Created on : Apr 8, 2015, 4:01:31 AM
    Author     : Rakesh Chand
--%>

<script>
            
            function validate(){
                
                
                if(document.trackform.seller.value == ""){
                    alert("Please provide username");
                    document.trackform.seller.focus();
                    return false;
                }
            }
                    </script>
<style>
    input[type="text"] {
	padding: 10px;
	width: 37.5%;
	color: #9198A3;
	font-size: 0.8125em;
	background: #fff;
	outline: none;
	display: block;
	border: 1px solid #eee;
}
input[type="submit"] {
	display: inline-block;
	padding: 13px 25px;
	background: #fb4d01;
	color: #FFF;
	font-size: 1em;
	line-height: 18px;
	text-transform: uppercase;
	border: none;
	outline: none;
	transition: 0.2s;
	-webkit-transition: 0.2s;
	-moz-transition: 0.2s;
	-o-transition: 0.2s;
}
input[type="submit"]:hover{
	background:#26d2fc;	
}
           body {
                width: 600px;
                margin: 40px auto;
                font-family: 'trebuchet MS', 'Lucida sans', Arial;
                font-size: 14px;
                color: #444;
            }

</style>
        

<%
    if (session.getAttribute("admin") != null) {%>



        <h3>Enter USERNAME</h3>
    <br>
    <form action="usertracked.jsp" method="post" name="trackform" onsubmit="return(validate());">
        <input type=text name="seller" placeholder="Enter USERNAME"/><br/><br/>
      <input type="submit" value="TRACK USER" />
        
        
    </form>
    <%} else {%>
<% response.sendRedirect("Login.jsp");
    }%>
    
        
        
