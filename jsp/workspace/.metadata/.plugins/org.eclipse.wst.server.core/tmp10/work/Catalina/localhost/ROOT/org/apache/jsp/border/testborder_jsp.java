/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.79
 * Generated at: 2022-06-12 14:53:43 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.border;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class testborder_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP?????? ?????? GET, POST ?????? HEAD ??????????????? ???????????????. Jasper??? OPTIONS ????????? ?????? ???????????????.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("     \r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/css/board.css\">\r\n");
      out.write("<div class=\"ViewLayout\">\r\n");
      out.write("	<!--p class=\"printer\"><img src=\"/img/printer.gif\" onclick=\"boardPop('bbs1','1');\" style=\"cursor:pointer\"/></p-->\r\n");
      out.write("          	<div class=\"Viewboard\">\r\n");
      out.write("            	<div class=\"ViewTop\">\r\n");
      out.write("                	<div class=\"ViewTitle\">\r\n");
      out.write("                    	<strong>????????????</strong>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"ViewName\">\r\n");
      out.write("                    	<strong>?????????</strong>?????????                   </div>\r\n");
      out.write("                    <div class=\"ViewDate\">\r\n");
      out.write("                    	<strong>??????</strong>2020-06-12                    </div>\r\n");
      out.write("                    <div class=\"ViewHit\">\r\n");
      out.write("                    	<strong>?????????</strong>1                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("            \r\n");
      out.write("            <div class=\"ViewCon\">\r\n");
      out.write("							            	<p>?????? ???????????? ??????!!&nbsp;</p>            </div>\r\n");
      out.write("						            \r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("        </div>\r\n");
      out.write("            <div class=\"BottNePr\">\r\n");
      out.write("            	<ul>\r\n");
      out.write("\r\n");
      out.write("                	<li><a href=\"javascript:alert('?????? ???????????? ????????????.')\"><img alt='???????????????' src='/sub5/img/pr.gif'> ?????????</a></li>\r\n");
      out.write("                   \r\n");
      out.write("									<li><a href='/HOME/index.php?_zidx=1511402440^1^1511402446&bmode=view&bnum=4&ttest=&skey=&sword=&page=&set=&viewMode='>????????? <img alt='???????????????' src='/sub5/img/ne.gif'></a></li>\r\n");
      out.write("\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            \r\n");
      out.write("            <div class=\"viewBut\">\r\n");
      out.write("            <a href=\"?_zidx=1511402440^1^1511402446&bmode=list&bnum=1&skey=&sword=&page=&set=&viewMode=&ul=&ttest=&ab=&\" class=\"list\">?????????</a>\r\n");
      out.write("                <p class=\"viewBut_R\">\r\n");
      out.write("                                   </p>\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("</div>            \r\n");
      out.write("<script language=\"JavaScript\" type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("<script type=\"text/javascript\" src=\"/js/slick.min.js\"></script>\r\n");
      out.write("  ");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
