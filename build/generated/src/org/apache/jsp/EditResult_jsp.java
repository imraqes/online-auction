package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class EditResult_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');

    int id = Integer.parseInt(request.getParameter("id"));
    String title = request.getParameter("title");
    String quantity = request.getParameter("quantity");
    String details = request.getParameter("details");
    int price = Integer.parseInt(request.getParameter("price"));
    int increment = Integer.parseInt(request.getParameter("increment"));
    String closingdate = request.getParameter("closingdate");
    String registereddate = request.getParameter("currentdate");
    String category = request.getParameter("category");
    String image = request.getParameter("image");





      out.write("\n");
      out.write("<style type=\"text/css\">\n");
      out.write("    .form-style-1 {\n");
      out.write("        margin:10px auto;\n");
      out.write("        max-width: 400px;\n");
      out.write("        padding: 20px 12px 10px 20px;\n");
      out.write("        font: 13px \"Lucida Sans Unicode\", \"Lucida Grande\", sans-serif;\n");
      out.write("    }\n");
      out.write("    .form-style-1 li {\n");
      out.write("        padding: 0;\n");
      out.write("        display: block;\n");
      out.write("        list-style: none;\n");
      out.write("        margin: 10px 0 0 0;\n");
      out.write("    }\n");
      out.write("    .form-style-1 label{\n");
      out.write("        margin:0 0 3px 0;\n");
      out.write("        padding:0px;\n");
      out.write("        display:block;\n");
      out.write("        font-weight: bold;\n");
      out.write("    }\n");
      out.write("    .form-style-1 input[type=text], \n");
      out.write("    .form-style-1 input[type=date],\n");
      out.write("    .form-style-1 input[type=datetime],\n");
      out.write("    .form-style-1 input[type=number],\n");
      out.write("    .form-style-1 input[type=search],\n");
      out.write("    .form-style-1 input[type=time],\n");
      out.write("    .form-style-1 input[type=url],\n");
      out.write("    .form-style-1 input[type=email],\n");
      out.write("    textarea, \n");
      out.write("    select{\n");
      out.write("        box-sizing: border-box;\n");
      out.write("        -webkit-box-sizing: border-box;\n");
      out.write("        -moz-box-sizing: border-box;\n");
      out.write("        border:1px solid #BEBEBE;\n");
      out.write("        padding: 7px;\n");
      out.write("        margin:0px;\n");
      out.write("        -webkit-transition: all 0.30s ease-in-out;\n");
      out.write("        -moz-transition: all 0.30s ease-in-out;\n");
      out.write("        -ms-transition: all 0.30s ease-in-out;\n");
      out.write("        -o-transition: all 0.30s ease-in-out;\n");
      out.write("        outline: none;\t\n");
      out.write("    }\n");
      out.write("    .form-style-1 input[type=text]:focus, \n");
      out.write("    .form-style-1 input[type=date]:focus,\n");
      out.write("    .form-style-1 input[type=datetime]:focus,\n");
      out.write("    .form-style-1 input[type=number]:focus,\n");
      out.write("    .form-style-1 input[type=search]:focus,\n");
      out.write("    .form-style-1 input[type=time]:focus,\n");
      out.write("    .form-style-1 input[type=url]:focus,\n");
      out.write("    .form-style-1 input[type=email]:focus,\n");
      out.write("    .form-style-1 textarea:focus, \n");
      out.write("    .form-style-1 select:focus{\n");
      out.write("        -moz-box-shadow: 0 0 8px #88D5E9;\n");
      out.write("        -webkit-box-shadow: 0 0 8px #88D5E9;\n");
      out.write("        box-shadow: 0 0 8px #88D5E9;\n");
      out.write("        border: 1px solid #88D5E9;\n");
      out.write("    }\n");
      out.write("    .form-style-1 .field-divided{\n");
      out.write("        width: 49%;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .form-style-1 .field-long{\n");
      out.write("        width: 100%;\n");
      out.write("    }\n");
      out.write("    .form-style-1 .field-select{\n");
      out.write("        width: 100%;\n");
      out.write("    }\n");
      out.write("    .form-style-1 .field-textarea{\n");
      out.write("        height: 100px;\n");
      out.write("    }\n");
      out.write("    .form-style-1 input[type=submit], .form-style-1 input[type=button]{\n");
      out.write("        background: #4B99AD;\n");
      out.write("        padding: 8px 15px 8px 15px;\n");
      out.write("        border: none;\n");
      out.write("        color: #fff;\n");
      out.write("    }\n");
      out.write("    .form-style-1 input[type=submit]:hover, .form-style-1 input[type=button]:hover{\n");
      out.write("        background: #4691A4;\n");
      out.write("        box-shadow:none;\n");
      out.write("        -moz-box-shadow:none;\n");
      out.write("        -webkit-box-shadow:none;\n");
      out.write("    }\n");
      out.write("    .form-style-1 .required{\n");
      out.write("        color:red;\n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("<body>\n");
      out.write("    <form action=\"add_update\" method=\"post\">\n");
      out.write("        <ul class=\"form-style-1\">\n");
      out.write("            <li>\n");
      out.write("                <label>User <span class=\"required\">*</span></label>\n");
      out.write("                <input type=\"text\" name=\"username\" value=\"");
      out.print(session.getAttribute("user"));
      out.write("\" class=\"field-long\" />\n");
      out.write("            </li>\n");
      out.write("            <li>\n");
      out.write("                <label>Title <span class=\"required\">*</span></label>\n");
      out.write("                <input type=\"text\" name=\"title\" value=\"");
      out.print(title);
      out.write("\" class=\"field-long\" />\n");
      out.write("            </li>\n");
      out.write("            <li>\n");
      out.write("                <label>Details <span class=\"required\">*</span></label>\n");
      out.write("                <textarea name=\"details\" value=\"");
      out.print(details);
      out.write("\" id=\"field5\" class=\"field-long field-textarea\"></textarea>\n");
      out.write("            </li>\n");
      out.write("            <li>\n");
      out.write("                <label>Closing Date <span class=\"required\">*</span></label>\n");
      out.write("                <input type=\"text\" name=\"closingdate\" value=\"");
      out.print(closingdate);
      out.write("\" class=\"field-long\" />\n");
      out.write("            </li>\n");
      out.write("            <li>\n");
      out.write("                <label>Quantity <span class=\"required\">*</span></label>\n");
      out.write("                <input type=\"text\" name=\"quantity\" value=\"");
      out.print(quantity);
      out.write("\" class=\"field-long\" />\n");
      out.write("            </li>\n");
      out.write("            <li>\n");
      out.write("                <label>Price <span class=\"required\">*</span></label>\n");
      out.write("                <input type=\"text\" name=\"price\" value=\"");
      out.print(price);
      out.write("\" class=\"field-long\" />\n");
      out.write("            </li>\n");
      out.write("\n");
      out.write("            <li>\n");
      out.write("                <label>Category</label>\n");
      out.write("                <select name=\"field4\" class=\"field-select\">\n");
      out.write("                    <option value=\"car\">car</option>\n");
      out.write("                    <option value=\"bikes\">bikes</option>\n");
      out.write("                    <option value=\"home/villa\">home/villa</option>\n");
      out.write("                </select>\n");
      out.write("            </li>\n");
      out.write("\n");
      out.write("            <label>Upload Pic <span class=\"required\">*</span></label>\n");
      out.write("            <input type=\"file\" name=\"AdpostPic\"/>\n");
      out.write("\n");
      out.write("            <li>\n");
      out.write("                <input type=\"submit\" value=\"Submit\" />\n");
      out.write("            </li>\n");
      out.write("        </ul>\n");
      out.write("    </form>\n");
      out.write("\n");
      out.write("</body>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
