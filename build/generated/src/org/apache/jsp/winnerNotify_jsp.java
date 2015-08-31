package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.hibernate.criterion.Restrictions;
import org.hibernate.Criteria;
import org.hibernate.model.*;
import org.hibernate.controller.HibernateUtil;
import org.hibernate.Session;

public final class winnerNotify_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    Session s = HibernateUtil.getSession();
    Criteria c = s.createCriteria(Adpost.class);
    c.add(Restrictions.eq("enable", 1));
    List<Adpost> l = c.list();
    
    String cd=null;
    String title = null;
    int id = 0;
    
    SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
    Long todayEpoch=null;
    Long targetEpoch=null;
    double daysLeft =0;
    Date date = null;
    Date sdate = new Date();
    for (Adpost adpost : l) {
        cd = adpost.getClosingdate();
        date = formatter.parse(cd);
        
        todayEpoch = sdate.getTime();
        targetEpoch = date.getTime();
        daysLeft = Math.floor(((targetEpoch - todayEpoch) / (60*60*24)) / 1000);
        
        if(daysLeft==0){
            title = adpost.getTitle();
            id = adpost.getId();
        
      out.write("\n");
      out.write("<table>\n");
      out.write("    <td>\n");
      out.write("        <h4><input type=\"button\" value=\"");
      out.print(title);
      out.write("\" onclick=\"window.location.href = 'notify.jsp?ids=");
      out.print(id);
      out.write("'\"></h4>\n");
      out.write("    </td>\n");
      out.write("</table>\n");
}
}
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
