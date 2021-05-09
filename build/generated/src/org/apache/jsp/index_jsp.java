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

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


	 
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
      out.write(" ");
      out.write("\t\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Home :: ShoppingBricks</title>\n");
      out.write("   <link href=\"bootstrap/css/bootstrap.css\" rel=\"stylesheet\" />\n");
      out.write("<link href=\"bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\"/>\n");
      out.write("\n");
      out.write("<link href=\"bootstrap/style.css\" rel=\"stylesheet\"/>\n");
      out.write("<link href=\"bootstrap/icon/css/fontawesome-all.css\" rel=\"stylesheet\"/>\n");
      out.write("<link href=\"bootstrap/icon/css/fontawesome-all.min.css\" rel=\"stylesheet\"/>\n");
      out.write("<link href=\"bootstrap/css/carousel.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <script src=\"bootstrap/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"bootstrap/js/ie-emulation-modes-warning.js\" type=\"text/javascript\"></script>\n");
      out.write("   <script src=\"bootstrap/js/jquery.min.js\" type=\"text/javascript\"></script>\n");
      out.write(" <script defer src=\"https://use.fontawesome.com/releases/v5.0.6/js/all.js\"></script>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("  ");

    String msg1=request.getParameter("log1");
     if(msg1!=null)
     out.print("<script>alert('success registration')</script>"); 
  
    
      out.write("\n");
      out.write("    ");

    String msg=request.getParameter("log");
    if(msg!=null)
     out.print("<script>alert('Invalid uname or pass..@Login Fail@')</script>");
  
    
      out.write("\n");
      out.write("    ");

     String msg2=request.getParameter("log2");
    if(msg2!=null)
     out.print("<script>alert('@For View Cart Details Please SignIn If You Exist..Otherwise @Please SignUp ')</script>");
  
    
      out.write("\n");
      out.write("<nav class=\"navbar navbar-default\">\n");
      out.write("    \n");
      out.write("    <!--header coding--->\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("    <!--header coding--->\n");
      out.write("    \n");
      out.write("        <div class=\"container-fluid\" style=\"padding:0px 0px 0px 0px\">\n");
      out.write("        <div id=\"myCarousel\" class=\"carousel slide\" data-ride=\"carousel\" style=\"height:300px\">\n");
      out.write("          <!-- Indicators -->\n");
      out.write("          <ul class=\"carousel-indicators\" >\n");
      out.write("            <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\" ></li>\n");
      out.write("            <li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\n");
      out.write("            <li data-target=\"#myCarousel\" data-slide-to=\"2\"></li>\n");
      out.write("            <li data-target=\"#myCarousel\" data-slide-to=\"3\"></li>\n");
      out.write("            <li data-target=\"#myCarousel\" data-slide-to=\"4\"></li>\n");
      out.write("            <li data-target=\"#myCarousel\" data-slide-to=\"5\"></li>\n");
      out.write("            \n");
      out.write("           \n");
      out.write("          </ul>\n");
      out.write("\n");
      out.write("          <!-- Wrapper for slides -->\n");
      out.write("          <div class=\"carousel-inner \" style=\"height:300px\">\n");
      out.write("                \n");
      out.write("              <div class=\"item active img-responsive\">\n");
      out.write("                  <img class=\" img-responsive \" src=\"images/Imgs/ba1.jpg\" style=\"width:100%;height:300px\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"item  img-responsive\">\n");
      out.write("              <img class=\" img-responsive \" src=\"images/s0.jpeg\" style=\"width:100%;height:300px\">\n");
      out.write("            </div>             \n");
      out.write("              <div class=\"item  img-responsive\">\n");
      out.write("                  <img class=\" img-responsive \" src=\"images/Imgs/ba2.jpg\" style=\"width:100%;height:300px\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"item img-responsive\">\n");
      out.write("              <img  class=\" img-responsive \" src=\"images/s2.jpg\" style=\"width:100%;height:300px\">\n");
      out.write("            </div>\n");
      out.write("             <div class=\"item img-responsive\">\n");
      out.write("              <img  class=\" img-responsive \" src=\"images/s3.jpg\" style=\"width:100%;height:300px\">\n");
      out.write("            </div>\n");
      out.write("              <div class=\"item  img-responsive\">\n");
      out.write("                  <img class=\" img-responsive \" src=\"images/Imgs/ba3.jpg\" style=\"width:100%;height:300px\">\n");
      out.write("            </div>\n");
      out.write("              <div class=\"item img-responsive\">\n");
      out.write("              <img  class=\" img-responsive \" src=\"images/s4.jpg\" style=\"width:100%;height:300px\"/>\n");
      out.write("            </div>\n");
      out.write("              \n");
      out.write("              \n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("          <!-- Left and right controls -->\n");
      out.write("          <a class=\"left carousel-control\" href=\"#myCarousel\" data-slide=\"prev\"  >\n");
      out.write("              <span class=\"glyphicon glyphicon-chevron-left\" style=\"background-color:#000000\"></span>\n");
      out.write("            <span class=\"sr-only\">Previous</span>\n");
      out.write("          </a>\n");
      out.write("          <a class=\"right carousel-control\" href=\"#myCarousel\" data-slide=\"next\">\n");
      out.write("              <span class=\"glyphicon glyphicon-chevron-right\" style=\"background-color:#000000\"></span>\n");
      out.write("            <span class=\"sr-only\">Next</span>\n");
      out.write("          </a>\n");
      out.write("        </div>\n");
      out.write("    </div>   \n");
      out.write(" <!------------------------slider end-------------------->    \n");
      out.write(" <!--------start banner-bottom  table list menu------>\n");
      out.write(" <div class=\"container-fluid\" style=\"border: 2px solid #671979;border-top:2px solid #671979; background-color: #ffffff;margin-top:-50px;\">\n");
      out.write("\t\t<div class=\"container-fluid\" >\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"row jumbotron\" style=\"background-color: #ffffff\" >\n");
      out.write("                            \n");
      out.write("\t\t\t\t<div role=\"tabpanel\" data-example-id=\"togglable-tabs\">\n");
      out.write("\t\t\t\t<ul id=\"myTab\" class=\"nav nav-tabs \" role=\"tablist\">\n");
      out.write("                                            ");
 
                                                      PreparedStatement ps=connection.prepareStatement("select pcat_id,pcname from prod_cat");
                                                     ResultSet rs=ps.executeQuery();
                                                     
                                                     
                                                    
                                             int a=0;
                                             
                                                    
                                                    while (rs.next()) 
                                                        
                                                    {
                                                       // k++;
                                                      a=rs.getInt("pcat_id");
                                                      
                                                      System.out.println("id:"+a);
                                                       if(a==1)
                                                       {
                                                        
      out.write("                               \n");
      out.write("\t\t\t\t\t\t<li role=\"presentation\" class=\"active\"><a href=\"#");
      out.print(a);
      out.write("\" id=\"home-tab\" role=\"tab\" data-toggle=\"tab\" aria-controls=\"home\">");
      out.print(rs.getString("pcname"));
      out.write("</a></li>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("                                                ");
 }else 
                                                       {
                                                
      out.write("\n");
      out.write("                                                <li role=\"presentation\" ><a href=\"#");
      out.print(a);
      out.write("\" id=\"home-tab\" role=\"tab\" data-toggle=\"tab\" aria-controls=\"home\">");
      out.print(rs.getString("pcname"));
      out.write("</a></li>\n");
      out.write("                                                 ");
  }

                                                                        }

                                                 
                                                                        
      out.write("\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("                                        \n");
      out.write("\t\t\t\t\t<div id=\"myTabContent\" class=\"tab-content\">\n");
      out.write("\t\t\t\t\t\t<div role=\"tabpanel\" class=\"tab-pane fade active in\" id=\"1\" aria-labelledby=\"home-tab\">\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("                                                    <div style=\"margin-top: 20px\">\n");
      out.write("                                                       \n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("                                                                     ");

                                               // String s=request.getParameter("var");
                                               // out.println("s:"+s);
                                              
                                               
                                                
                                                    PreparedStatement ps1=connection.prepareStatement("select * from product where pcat_id=? ");
                                                    ps1.setInt(1,1);
                                                   
                                                     ResultSet rs1=ps1.executeQuery();
                                    while (rs1.next()) {        
        
                                  
                       
                                                
      out.write("\n");
      out.write("                                                \n");
      out.write("                                                \n");
      out.write("                                                   <div class=\"col-lg-3 col-md-4 col-sm-6 text-center \" style=\"margin-top: 50px;\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("                                                       <a href=\"moreinfo.jsp?pid=");
      out.print(rs1.getInt("pid"));
      out.write("\"><img src=\"");
      out.print(rs1.getString("pimageurl"));
      out.write("\" alt=\" \"  style=\"width: 130px;height:250px\"/></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<h5 ><a href=\"moreinfo.jsp?pid=");
      out.print(rs1.getInt("pid"));
      out.write('"');
      out.write('>');
      out.print(rs1.getString("pmodel"));
      out.write("</a><br>Rs.");
      out.print(rs1.getInt("price"));
      out.write("</h5>\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("                                                                      <a href=\"AddCart?pid=");
      out.print(rs1.getInt("pid"));
      out.write("\">  <button class=\"btn btn-danger\"  style=\"margin-top:10px;\" >&nbsp Add To Cart  </button> </a>  \n");
      out.write("\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("                                                                                 \n");
      out.write("\t\t\t\n");
      out.write("                                              \n");
      out.write("                                                ");

                                                   
                                                }
                                                
      out.write("      \n");
      out.write("                                                    \n");
      out.write("                                                           \n");
      out.write("                             \n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("                                                <div role=\"tabpanel\" class=\"tab-pane fade\" id=\"2\" aria-labelledby=\"video-tab\" >\n");
      out.write("\t\t\t\t\t\t\t<div class=\"text-center\" style=\"margin-top: 20px\">\n");
      out.write("\t\t\t\t\t\t\t\t     ");

                                               // String s=request.getParameter("var");
                                               // out.println("s:"+s);
                                              
                                               
                                                
                                                    PreparedStatement ps2=connection.prepareStatement("select * from product where pcat_id=? ");
                                                    ps2.setInt(1,2);
                                                   
                                                     ResultSet rs2=ps2.executeQuery();
                                    while (rs2.next()) {        
        
                                    
                       
                                                
      out.write("\n");
      out.write("                                                \n");
      out.write("                                                \n");
      out.write("                                                    \n");
      out.write("                                               \n");
      out.write("                                                <div class=\"col-lg-3 col-md-4 col-sm-6 text-center \" style=\"margin-top: 50px;\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t \t<a href=\"moreinfo.jsp?pid=");
      out.print(rs2.getInt("pid"));
      out.write("\"> <img src=\"");
      out.print(rs2.getString("pimageurl"));
      out.write("\" alt=\" \" style=\"width: 180px;height:150px\"/></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<h5 ><a href=\"moreinfo.jsp?pid=");
      out.print(rs2.getInt("pid"));
      out.write('"');
      out.write('>');
      out.print(rs2.getString("pmodel"));
      out.write("</a><br>Rs.");
      out.print(rs2.getInt("price"));
      out.write("</h5>\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("                                                                        <a href=\"AddCart?pid=");
      out.print(rs2.getInt("pid"));
      out.write("\"> <button class=\"btn btn-danger\"  style=\"margin-top:10px;\">&nbsp Add To Cart  </button> </a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\n");
      out.write("                                                                       \n");
      out.write("                                                                 \n");
      out.write("                                                                        </div>\n");
      out.write("                                                                                 \n");
      out.write("\t\t\t\n");
      out.write("                                              \n");
      out.write("                                                ");

                                                   
                                                }
                                                
      out.write("      \n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>                              \n");
      out.write("                        \n");
      out.write("                                                \n");
      out.write("\t\t\t<div role=\"tabpanel\" class=\"tab-pane fade\" id=\"3\" aria-labelledby=\"audio-tab\">\n");
      out.write("\t\t\t\t\t\t\t<div style=\"margin-top: 20px\">\n");
      out.write("                                                  \n");
      out.write("                                                            \n");
      out.write("                                                            \n");
      out.write("                                                            \t     ");

                                               // String s=request.getParameter("var");
                                               // out.println("s:"+s);
                                              
                                              
                                                
                                                    PreparedStatement ps3=connection.prepareStatement("select * from product where pcat_id=? ");
                                                    ps3.setInt(1,3);
                                                   
                                                     ResultSet rs3=ps3.executeQuery();
                                    while (rs3.next()) {        
        
                                   
                       
                                                
      out.write("\n");
      out.write("                                                \n");
      out.write("                                                 \n");
      out.write("                                                    <div class=\"col-lg-3 col-md-4 col-sm-6 text-center\" style=\"margin-top: 50px;\">\n");
      out.write("                                                        <a href=\"moreinfo.jsp?pid=");
      out.print(rs3.getInt("pid"));
      out.write("\">\t<img class=\"text-center\" src=\"");
      out.print(rs3.getString("pimageurl"));
      out.write("\" alt=\" \" style=\"width: 190px;height:150px\"/></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<h5 ><a href=\"moreinfo.jsp?pid=");
      out.print(rs3.getInt("pid"));
      out.write('"');
      out.write('>');
      out.print(rs3.getString("pmodel"));
      out.write("</a><br>Rs.");
      out.print(rs3.getInt("price"));
      out.write("</h5>\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("                                                                        \n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"AddCart?pid=");
      out.print(rs3.getInt("pid"));
      out.write("\"> <button class=\"btn btn-danger\"  style=\"margin-top:10px;\">&nbsp Add To Cart  </button> </a>\n");
      out.write("                                                            \t\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("                                                                                 \n");
      out.write("\t\t\t\n");
      out.write("                                              \n");
      out.write("                                                ");

                                                   
                                                }
                                                
      out.write("  \n");
      out.write("                                                            \n");
      out.write("                                              \n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t<div role=\"tabpanel\" class=\"tab-pane fade\" id=\"4\" aria-labelledby=\"tv-tab\">\n");
      out.write("\t\t\t\t\t\t\t<div style=\"margin-top: 20px\">\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("                                                             ");

                                               // String s=request.getParameter("var");
                                               // out.println("s:"+s);
                                              
                                               
                                                
                                                    PreparedStatement ps4=connection.prepareStatement("select * from product where pcat_id=? ");
                                                    ps4.setInt(1,4);
                                                   
                                                     ResultSet rs4=ps4.executeQuery();
                                    while (rs4.next()) {        
        
                                   
                                                
      out.write("\n");
      out.write("                                                \n");
      out.write("                                                 \n");
      out.write("                                                    <div class=\"col-lg-3 col-md-4 col-sm-6 text-center\" style=\"margin-top: 50px;\">\n");
      out.write("                                                        <a href=\"moreinfo.jsp?pid=");
      out.print(rs4.getInt("pid"));
      out.write("\"><img class=\"text-center\" src=\"");
      out.print(rs4.getString("pimageurl"));
      out.write("\" alt=\" \" style=\"width: 180px;height:150px\"/></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<h5 ><a href=\"moreinfo.jsp?pid=");
      out.print(rs4.getInt("pid"));
      out.write('"');
      out.write('>');
      out.print(rs4.getString("pmodel"));
      out.write("</a><br>Rs.");
      out.print(rs4.getInt("price"));
      out.write("</h5>\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("                                                                        \n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"AddCart?pid=");
      out.print(rs4.getInt("pid"));
      out.write("\"> <button class=\"btn btn-danger\"  style=\"margin-top:10px;\">&nbsp Add To Cart  </button> </a>\n");
      out.write("                                                           \n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("                                                                                 \n");
      out.write("\t\t\t\n");
      out.write("                                              \n");
      out.write("                                                ");

                                                   
                                                }
                                                
      out.write("  \n");
      out.write("                                                            \n");
      out.write("                                                            \n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div role=\"tabpanel\" class=\"tab-pane fade\" id=\"5\" aria-labelledby=\"kitchen-tab\">\n");
      out.write("\t\t\t\t\t\t\t<div style=\"margin-top: 20px\">\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("                                                              ");

                                               // String s=request.getParameter("var");
                                               // out.println("s:"+s);
                                              
                                               
                                                
                                                    PreparedStatement ps5=connection.prepareStatement("select * from product where pcat_id=? ");
                                                    ps5.setInt(1,5);
                                                   
                                                     ResultSet rs5=ps5.executeQuery();
                                    while (rs5.next()) {        
        
                                   
                                                
      out.write("\n");
      out.write("                                                \n");
      out.write("                                                 \n");
      out.write("                                                    <div class=\"col-lg-3 col-md-4 col-sm-6 text-center\" style=\"margin-top: 50px;\">\n");
      out.write("                                                        <a href=\"moreinfo.jsp?pid=");
      out.print(rs5.getInt("pid"));
      out.write("\"><img class=\"text-center\" src=\"");
      out.print(rs5.getString("pimageurl"));
      out.write("\" alt=\" \" style=\"width: 180px;height:180px\"/></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<h5 ><a href=\"moreinfo.jsp?pid=");
      out.print(rs5.getInt("pid"));
      out.write('"');
      out.write('>');
      out.print(rs5.getString("pmodel"));
      out.write("</a><br>Rs.");
      out.print(rs5.getInt("price"));
      out.write("</h5>\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("                                                                        \n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"AddCart?pid=");
      out.print(rs5.getInt("pid"));
      out.write("\"> <button class=\"btn btn-danger\"  style=\"margin-top:10px;\">&nbsp Add To Cart  </button> </a>\n");
      out.write("                                                           \n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("                                                                                 \n");
      out.write("\t\t\t\n");
      out.write("                                              \n");
      out.write("                                                ");

                                                   
                                                }
                                                
      out.write("  \n");
      out.write("                                                            \n");
      out.write("                                                            \n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("                                                    \n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div> \n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t</div>\n");
      out.write("     \n");
      out.write("\t</div>\n");
      out.write("\t<!-- //banner-bottom --> \n");
      out.write(" \n");
      out.write(" \n");
      out.write("  </nav>\n");
      out.write("\n");
      out.write("    <!-----------------------------------      END OF HEADER CODING-------------------------------------------------------------------------------->\n");
      out.write("   \n");
      out.write("    <!-----------------------------------     Footer coding----------------------------->\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("<!-----------------------------------    end of Footer coding------------------------------------------>\n");
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
