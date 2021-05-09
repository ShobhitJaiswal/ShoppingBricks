package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.oreilly.servlet.MultipartRequest;
import java.text.SimpleDateFormat;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import connect.ConnectionProvider;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


	    
                     String label=null;
	Connection connection=ConnectionProvider.getCon();
     
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>header Page</title>\n");
      out.write("\n");
      out.write("<link href=\"bootstrap/css/bootstrap.css\" rel=\"stylesheet\" />\n");
      out.write("<link href=\"bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\"/>\n");
      out.write("\n");
      out.write("<link href=\"bootstrap/style.css\" rel=\"stylesheet\"/>\n");
      out.write("<link href=\"bootstrap/icon/css/fontawesome-all.css\" rel=\"stylesheet\"/>\n");
      out.write("<link href=\"bootstrap/icon/css/fontawesome-all.min.css\" rel=\"stylesheet\"/>\n");
      out.write("<link href=\"bootstrap/css/carousel.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("      <script src=\"bootstrap/js/bootstrap.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"bootstrap/js/ie-emulation-modes-warning.js\" type=\"text/javascript\"></script>\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write(" <script defer src=\"https://use.fontawesome.com/releases/v5.0.6/js/all.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("     ");
      out.write("\t\n");
      out.write("     \n");
      out.write("     <div id=\"home1\" class=\"container-fluid\" style=\"background-color:blue\">\n");
      out.write("   <div class=\"row\">\n");
      out.write("   \n");
      out.write("       <div class=\"col-md-2 text-center logo\" style=\"margin-top: 25px\">\n");
      out.write("          <a href=\"index.jsp\"><img src=\"images/Capture.PNG\"/></a>\n");
      out.write("      </div>\n");
      out.write("   \n");
      out.write("   <div class=\"col-md-6\" style=\"margin-top:60px; border: 2px\">\n");
      out.write("     <form action=\"search_result.jsp\">\n");
      out.write("         <div class=\"input-group\">\n");
      out.write("             <input type=\"text\" name=\"query\" class=\"form-control\" placeholder=\"Search Products Here\" /> \n");
      out.write("      <div class=\"input-group-btn\">\n");
      out.write("\t    <button class=\"btn btn-default\" type=\"submit\" style=\"height:34px\">\n");
      out.write("            <i class=\"glyphicon glyphicon-search\"></i>\n");
      out.write("            </button>\n");
      out.write("\t  </div>\n");
      out.write("         </div>\n");
      out.write("     </form>\n");
      out.write("    </div>\n");
      out.write("   \n");
      out.write("   \n");
      out.write("      <div class=\"col-md-4 text-right\">\n");
      out.write("          <div class=\"row\" style=\"margin:10px\">\n");
      out.write("              <ul class=\"list-inline menu\">\n");
      out.write("                  <li><a href=\"#\"><i class=\" fa fa-phone\"> </i> 24x7<i>-Helpline: +91-9958-809-268</i></a></li>\n");
      out.write("              </ul>\n");
      out.write("          </div>\n");
      out.write("          \n");
      out.write("          <!------------ more and add cart sign in & sign out------->\n");
      out.write("          \n");
      out.write("\t\t   <div class=\"row\" style=\"margin-top: 80px\">\n");
      out.write("\t         <ul class=\"list-inline menu\">\n");
      out.write("                     <li class=\"dropdown more_list\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">More   <span class=\"caret\"></span></a>\n");
      out.write("                       <ul class=\"dropdown-menu\">\n");
      out.write("                         <li><a href=\"#\"><i class=\"fa fa-user\"> </i> Sell </a></li>\n");
      out.write("\t\t\t <li role=\"presentation\" class=\"divider\"></li>\n");
      out.write("                         <li><a href=\"#\"><i class=\" fa fa-gift\"> </i> Today's Deal </a></li>\n");
      out.write("\t\t\t <li role=\"presentation\" class=\"divider\"></li>\n");
      out.write("                        <li><a href=\"#\"><i class=\" fa fa-phone\"> </i> 24x7 Customer Care</a></li>\n");
      out.write("\t\t\t<li role=\"presentation\" class=\"divider\"></li>\n");
      out.write("\t\t\t<li><a href=\"#\"><i class=\" fa fa-map-marker\"> </i> Track Order</a></li>\n");
      out.write("                       </ul>\n");
      out.write("                      </li>\n");
      out.write("                     <li><a href=\"validate.jsp\" class=\"active\"><i class=\"fa fa-shopping-cart\"></i> Cart</a></li>\n");
      out.write("                  \n");
      out.write("                       ");

                     
                     label=(String)session.getAttribute("user2");
                     if(label==null)
                     {
                     
      out.write(" \n");
      out.write("\t           <li data-toggle=\"modal\" data-target=\"#login\"><a href=\"#\"><i class=\"fas fa-user\"></i><span > Sign In</span></a></li>\n");
      out.write("\t\t\t    <li data-toggle=\"modal\" data-target=\"#signup\"><a href=\"#\"><i class=\"fas fa-user\"></i><span> Sign Up</span></a></li>\n");
      out.write("            ");

                     
                     }else
                        {
                     
      out.write(" \n");
      out.write("                            \n");
      out.write("                       <li class=\"dropdown more_list\"><a style=\" color:#4cae4c\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\"><i class=\"fas fa-user\"></i> Welcome ");
      out.print(label);
      out.write("<span class=\"caret\"></span></a>\n");
      out.write("                       \n");
      out.write("                       <ul class=\"dropdown-menu\">\n");
      out.write("                         <li><a href=\"#\"><i class=\"fa fa-user\"> </i> Your Profile </a></li>\n");
      out.write("\t\t\t <li role=\"presentation\" class=\"divider\"></li>\n");
      out.write("                         <li><a href=\"#\"><i class=\" fa fa-gift\"> </i> Change Password </a></li>\n");
      out.write("\t\t\t <li role=\"presentation\" class=\"divider\"></li>\n");
      out.write("                        <li><a href=\"#\"><i class=\" fa fa-phone\"> </i> Your Order</a></li>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\n");
      out.write("                       </ul>\n");
      out.write("                       \n");
      out.write("                       \n");
      out.write("                       \n");
      out.write("                       </li>\n");
      out.write("\t\t\t    <li ><a style=\"color: red\" href=\"logout.jsp\"><i class=\"fas fa-user\"></i><span> Logout</span></a></li>      \n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                            ");

                     
                    }
                     
      out.write(" \n");
      out.write("\t\t      </ul>\n");
      out.write("              \n");
      out.write("                       \n");
      out.write("                       \n");
      out.write("         <div class=\"row\" >\n");
      out.write("            <div class=\"col-lg-12\">\n");
      out.write("<!-- Modal -->\n");
      out.write("               <div id=\"login\" class=\"modal fade\" role=\"dialog\">\n");
      out.write("                  <div class=\"modal-dialog\">\n");
      out.write("\n");
      out.write("    <!-- Modal content-->\n");
      out.write("                   <div class=\"modal-content\">\n");
      out.write("                     <div class=\"modal-header\">\n");
      out.write("                       <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("                            <h4 class=\"modal-title\"></h4>\n");
      out.write("                     </div>\n");
      out.write("                   <div class=\"modal-body\">\n");
      out.write("                        <div class=\"panel panel-primary\">\n");
      out.write("                            <div class=\"panel-heading text-left\">\n");
      out.write("                                Welcome to SIGN IN\n");
      out.write("                            </div>\n");
      out.write("                         <div class=\"panel-body\">\n");
      out.write("                     \n");
      out.write("                             <form action=\"jspFile/login.jsp\" method=\"post\">\n");
      out.write("                               \n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <input type=\"text\" name=\"uname\" placeholder=\"Your user name\" required=\"\" class=\"form-control\" />\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <input type=\"password\" name=\"upass\" placeholder=\"Your Password\" required=\"\" class=\"form-control\" />\n");
      out.write("                                </div>     \n");
      out.write("                                <div class=\"form-group text-left\">\n");
      out.write("                                \n");
      out.write("                                    <input type=\"submit\" value=\"SIGN IN\" class=\"btn btn-success\" />\n");
      out.write("                                    \n");
      out.write("                                </div> \n");
      out.write("                                 <div class=\"form-group text-right\">\n");
      out.write("                                     <ul style=\"list-style: none\">\n");
      out.write("                                         \n");
      out.write("                                         <li><a href=\"forgot.jsp\">forgotten</a> password ?</li>\n");
      out.write("                                     </ul>\n");
      out.write("                                    \n");
      out.write("                                </div> \n");
      out.write("                             </form>                              \n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                       <center><h4>OR</h4></center>\n");
      out.write("                    </div>\n");
      out.write("                     <div class=\"modal-footer text-center\">\n");
      out.write("                     \n");
      out.write("\t\t   <span class=\"follow\">\n");
      out.write("                       <center>\n");
      out.write("                           <a href=\"https://www.facebook.com/\" target=\"_blank\"><i class=\"fab fa-facebook-square\"></i></a>\n");
      out.write("                       <a href=\"https://www.twitter.com/\" target=\"_blank\"><i class=\"fab fa-twitter\"></i></a>\n");
      out.write("                       <a href=\"https://plus.google.com/\" target=\"_blank\"><i class=\"fab fa-google-plus\"></i></a>\n");
      out.write("                       </center>\n");
      out.write("\t\t   </span>\n");
      out.write("                     \n");
      out.write("                     </div>\n");
      out.write("                       </div>\n");
      out.write("                     </div>\n");
      out.write("                 </div>\n");
      out.write("            </div>\n");
      out.write("        </div>  \n");
      out.write("                       \n");
      out.write("                       <div class=\"row\" >\n");
      out.write("            <div class=\"col-lg-12\">\n");
      out.write("<!-- Modal -->\n");
      out.write("               <div id=\"signup\" class=\"modal fade\" role=\"dialog\">\n");
      out.write("                  <div class=\"modal-dialog\">\n");
      out.write("\n");
      out.write("    <!-- Modal content-->\n");
      out.write("                   <div class=\"modal-content\">\n");
      out.write("                     <div class=\"modal-header\">\n");
      out.write("                       <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("                         <!---   <h4 class=\"modal-title\"></h4>--->\n");
      out.write("                     </div>\n");
      out.write("                   <div class=\"modal-body\">\n");
      out.write("                        <div class=\"panel panel-primary\">\n");
      out.write("                            <div class=\"panel-heading text-left\">\n");
      out.write("                                Welcome to CREATE ACCOUNT !!\n");
      out.write("                            </div>\n");
      out.write("                         <div class=\"panel-body\">\n");
      out.write("                                \n");
      out.write("                             <form action=\"jspFile/register.jsp\" method=\"post\">\n");
      out.write("                      \n");
      out.write("                                 <div class=\"form-group\">\n");
      out.write("                                    <input type=\"text\" name=\"uid\" placeholder=\"Your User Id\" required=\"\" class=\"form-control\" />\n");
      out.write("                                </div>\n");
      out.write("                                 <div class=\"form-group\">\n");
      out.write("                                    <input type=\"text\" name=\"uname\" placeholder=\"Your Name\" required=\"\" class=\"form-control\" />\n");
      out.write("                                </div>\n");
      out.write("                                 <div class=\"form-group\">\n");
      out.write("                                    <input type=\"password\"  name=\"upass\" placeholder=\"your Password\" required=\"\" class=\"form-control\" />\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <input type=\"password\" name=\"ucpass\" placeholder=\"confirm Password\" required=\"\" class=\"form-control\" />\n");
      out.write("                                </div>  \n");
      out.write("                                 <div class=\"form-group\">\n");
      out.write("                                    <input type=\"email\"  name=\"uemail\" placeholder=\"Your Email\" required=\"\" class=\"form-control\" />\n");
      out.write("                                </div>\n");
      out.write("                                 <div class=\"form-group\">\n");
      out.write("                                    <input type=\"text\" name=\"uphone\" placeholder=\"Phone Number\" required=\"\" class=\"form-control\" />\n");
      out.write("                                </div>\n");
      out.write("                               \n");
      out.write("                                   \n");
      out.write("                                <div class=\"form-group text-left\">\n");
      out.write("                                    <input type=\"submit\" value=\"CREATE ACCOUNT\" class=\"btn btn-success\" />\n");
      out.write("                                    <input type=\"reset\" value=\"RESET\" class=\"btn btn-primary\" />\n");
      out.write("                                    \n");
      out.write("                                </div> \n");
      out.write("                             </form>                              \n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("          \n");
      out.write("                    </div>\n");
      out.write("                     \n");
      out.write("                       </div>\n");
      out.write("                     </div>\n");
      out.write("                 </div>\n");
      out.write("            </div>\n");
      out.write("        </div>  \n");
      out.write("                       \n");
      out.write("                       \n");
      out.write("                  \n");
      out.write("\t\t    </div>\n");
      out.write("\t\t<!------------ more and add cart sign in & sign out------->\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t \n");
      out.write("      </div>\n");
      out.write("   \n");
      out.write("   </div>\n");
      out.write("  </div>\n");
      out.write("    \n");
      out.write("   \n");
      out.write("    <!--------------------start of menu bar-------------->   \n");
      out.write("    <div class=\"container-fluid\" style=\"background-color:black\">\n");
      out.write("          <div class=\"navbar-header\" >\n");
      out.write("             \n");
      out.write("            <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar\" aria-expanded=\"false\" aria-controls=\"navbar\">\n");
      out.write("              \n");
      out.write("              \n");
      out.write("            </button>\n");
      out.write("          </div>\n");
      out.write("            \n");
      out.write("            <div id=\"navbar\" class=\"navbar-collapse collapse\">\n");
      out.write("            <ul class=\"nav navbar-nav home_menu\">\n");
      out.write("                <li><a href=\"index.jsp\" class=\"hm\">Home</a></li>\n");
      out.write("              <li class=\"dropdown\">\n");
      out.write("                <a href=\"#\" class=\"dropdown-toggle hm\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\" style=\"background-color:black\">Products<span class=\"caret\"></span></a>\n");
      out.write("                <ul class=\"dropdown-menu multi-column-dropdown columns-3\">\n");
      out.write("                  <div class=\"row\">\n");
      out.write("                                             ");
 
                                                     PreparedStatement ps=connection.prepareStatement("select pcat_id,pcname from prod_cat");
                                                     ResultSet rs=ps.executeQuery();
                                                     
                                                     
                                                    
                                                    
                                                    
                                                    while (rs.next()) 
                                                        
                                                    {
                                                      int  s=rs.getInt("pcat_id");
                                                        PreparedStatement ps1=connection.prepareStatement("select * from p_subcat where pcat_id=? ");
                                                      ps1.setInt(1, s);
                                                     ResultSet rs1=ps1.executeQuery();
                                                       
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"col-lg-2\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"multi-column-dropdown\">\n");
      out.write("                                                                                  \n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<h6>");
      out.print(rs.getString("pcname"));
      out.write("</h6>\n");
      out.write("                                                                                        ");
 
                                                                                            while (rs1.next()) 
                                                                                        {
                                                                                           
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"products.jsp?p=");
      out.print(rs1.getInt("psubcat_id"));
      out.write('"');
      out.write('>');
      out.print(rs1.getString("psubcatname"));
      out.write("</a></li>\n");
      out.write("                                                                                        \n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t ");

                                                                                            }
                                                                                            
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("                                                                        ");

                                                                        }
                                                                        
      out.write("\n");
      out.write("                                                                        \n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("                </ul>\n");
      out.write("              </li>\n");
      out.write("                <li><a href=\"validate.jsp\" class=\"hm\">My Order</a></li>\n");
      out.write("                \n");
      out.write("              <li><a href=\"aboutus.jsp\" class=\"hm\">About Us</a></li>\n");
      out.write("              <li><a href=\"contact.jsp\" class=\"hm\">Contact Us</a></li>\n");
      out.write("              \n");
      out.write("              \n");
      out.write("              </li>\n");
      out.write("            </ul>\n");
      out.write("            \n");
      out.write("          </div><!--/.nav-collapse -->\n");
      out.write("        </div><!--/.container-fluid -->\n");
      out.write("        <!--------------------end of menu bar-------------->\n");
      out.write("  \n");
      out.write("\n");
      out.write("    \n");
      out.write("</body>\n");
      out.write("</html>\n");
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
