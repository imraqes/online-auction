<%-- 
    Document   : sendMaiL
    Created on : 9 Apr, 2015, 1:41:33 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<jsp:useBean id="mail" scope="session" class="jMail.Mail" />
<jsp:setProperty name="mail" property="to" value="r.rulaniya@gmail.com" />
<jsp:setProperty name="mail" property="from" value="r.rulaniya@gmail.com" />
<jsp:setProperty name="mail" property="smtpServ" value="smtp.gmail.com" />
<jsp:setProperty name="mail" property="subject" param="subject" />
<jsp:setProperty name="mail" property="message" param="message" />
<jsp:setProperty name="mail" property="email" param="email" />
<jsp:setProperty name="mail" property="username" param="username" />


 <%
String to = mail.getTo();
int result;
result = mail.sendMail();
if(result == 0){
    out.println(" Mail Successfully Sent to "+to);
    %>
      <input type="submit" value="BACK" onClick="history.go(-1);
                return true;">
    
 <%
    
}
else{
    out.println(" Mail NOT Sent to "+to);
    %>
      <input type="submit" value="BACK" onClick="history.go(-1);
                return true;">
    
 <%
}  
%>