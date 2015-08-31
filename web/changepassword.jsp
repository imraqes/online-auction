<%-- 
    Document   : changepassword
    Created on : Apr 1, 2015, 5:54:20 AM
    Author     : Rakesh Chand
--%>
<%
    if (session.getAttribute("user") != null) {%>


<html>
    <script language="javascript">

        function check()
        {
            if (f1.oldpwd.value == "")
            {
                alert("Old Password Must Be Entered");
                f1.oldpwd.focus()
                return false;
            }

            if (f1.newpwd.value == "")
            {
                alert("New Password Must Be Entered");
                f1.newpwd.focus()
                return false;
            }

            if (f1.newpwd.value != f1.confirmpwd.value)
            {
                alert("New password and confirm password are not matching.");
                f1.confirmpwd.focus()
                return false;
            }
            return true;
        }

    </script>

<style type="text/css">
body{
	background: #17445E;
}
.form-style-9{
	max-width: 450px;
	background: #FAFAFA;
	padding: 30px;
	margin: 50px auto;
	box-shadow: 1px 1px 25px rgba(0, 0, 0, 0.35);
	border-radius: 10px;
	border: 6px solid #305A72;
}
.form-style-9 ul{
	padding:0;
	margin:0;
	list-style:none;
}
.form-style-9 ul li{
	display: block;
	margin-bottom: 10px;
	min-height: 35px;
}
.form-style-9 ul li  .field-style{
	box-sizing: border-box; 
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box; 
	padding: 8px;
	outline: none;
	border: 1px solid #B0CFE0;
	-webkit-transition: all 0.30s ease-in-out;
	-moz-transition: all 0.30s ease-in-out;
	-ms-transition: all 0.30s ease-in-out;
	-o-transition: all 0.30s ease-in-out;

}.form-style-9 ul li  .field-style:focus{
	box-shadow: 0 0 5px #B0CFE0;
	border:1px solid #B0CFE0;
}
.form-style-9 ul li .field-split{
	width: 49%;
}
.form-style-9 ul li .field-full{
	width: 100%;
}
.form-style-9 ul li input.align-left{
	float:left;
}
.form-style-9 ul li input.align-right{
	float:right;
}
.form-style-9 ul li textarea{
	width: 100%;
	height: 100px;
}
.form-style-9 ul li input[type="button"], 
.form-style-9 ul li input[type="submit"] {
	-moz-box-shadow: inset 0px 1px 0px 0px #3985B1;
	-webkit-box-shadow: inset 0px 1px 0px 0px #3985B1;
	box-shadow: inset 0px 1px 0px 0px #3985B1;
	background-color: #216288;
	border: 1px solid #17445E;
	display: inline-block;
	cursor: pointer;
	color: #FFFFFF;
	padding: 8px 18px;
	text-decoration: none;
	font: 12px Arial, Helvetica, sans-serif;
}
.form-style-9 ul li input[type="button"]:hover, 
.form-style-9 ul li input[type="submit"]:hover {
	background: linear-gradient(to bottom, #2D77A2 5%, #337DA8 100%);
	background-color: #28739E;
}

span{
    color: #28739E;
}

</style>
</head>
<body>
    
<form class="form-style-9"  name=f1  onsubmit="return check()" action="changepasswordresult.jsp" method="post">
    <h1>CHANGE PASSWORD</h1>
    <ul>
<li>
    <span>OLD PASSWORD</span><br><br>
<input type="password" name="oldpwd" class="field-style field-full align-none" placeholder="Old Password" />
<br><br>
<span>NEW PASSWORD</span><br><br>
<input type="password" name="newpwd" class="field-style field-full align-none" placeholder="New Password" />
<br><br>
<span>CONFIRM PASSWORD</span><br><br>
<input type="password" name="confirmpwd" class="field-style field-full align-none" placeholder="Confirm Password" />
</li>
<li>
<br><br>
    <input type="submit" value="CHANGE PASSWORD" />
</li>
</ul>
</form>

</body>
</html>
<%} else {%>
<% response.sendRedirect("Login.jsp");
        }%>