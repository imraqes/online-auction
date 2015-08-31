package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Iterator;
import org.hibernate.Transaction;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.criterion.Projections;
import java.util.List;
import org.hibernate.criterion.Restrictions;
import org.hibernate.model.Bid;
import org.hibernate.Criteria;
import org.hibernate.controller.HibernateUtil;
import org.hibernate.Session;

public final class notify_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");

    int id = Integer.parseInt(request.getParameter("ids"));
    int[] bidAmount = new int[1000];
    int ids = 0;
    String title = null;
    int max = 0;
    int maxIndex = 0;
    Session s = HibernateUtil.getSession();
    Criteria c = s.createCriteria(Bid.class);
    c.add(Restrictions.eq("adpost_id", id));
    List<Bid> l = c.list();
    for (Bid bi : l) {
        bidAmount[1000] = bi.getBidAmount();
        ids = bi.getId();
        title = bi.getTitle_ad();

        for (int i = 0; i < bidAmount.length; i++) {
            if (max < bidAmount[i]) {
                maxIndex = i;
            }
        }



      out.write("\n");
      out.write("<table>\n");
      out.write("    <td>");
      out.print(bidAmount);
      out.write("</td>\n");
      out.write("    <td>");
      out.print(ids);
      out.write("</td>\n");
      out.write("    <td>");
      out.print(title);
      out.write("</td>\n");
      out.write("    <td>");
      out.print(max);
      out.write("</td>\n");
      out.write("    <td>");
      out.print(maxIndex);
      out.write("</td>\n");
      out.write("</table>\n");
      out.write("\n");

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
