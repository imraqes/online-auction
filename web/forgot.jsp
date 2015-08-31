<%-- 
    Document   : forgot
    Created on : Apr 2, 2015, 4:36:06 AM
    Author     : Rakesh Chand
--%>
<script>

    function validate() {


        if (document.forgotform.email.value == "") {
            alert("Please provide email");
            document.forgotform.email.focus();
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
input[type="button"] {
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
input[type="button"]:hover{
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






<body>
<center>
    <h1>Forgot Password </h1>
    <form action="forgotpassword" method="post" name="forgotform" onsubmit="return(validate());">
        <h3>Enter your email address  </h3>
        <input type=text name=email  size=30>
        <p>
            <input type=submit value="Submit">
            &nbsp;
            <input type=button onclick="javascript:history.back()" value="Back">
    </form>
</center>
</body>