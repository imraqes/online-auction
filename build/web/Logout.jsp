<%-- 
    Document   : Logout
    Created on : Jan 14, 2015, 4:24:05 PM
    Author     : Raqesh Chand
--%>


<script>
    window.history.forward(1);
</script>
<%
    if (session.getAttribute("user") != null) {


        session.invalidate();

        response.sendRedirect("indexo.jsp");
    } else if (session.getAttribute("admin") != null) {
        session.invalidate();

        response.sendRedirect("indexo.jsp");

    } else {
        out.print("You are already Log out");
        response.sendRedirect("indexo.jsp");
    }

%>
