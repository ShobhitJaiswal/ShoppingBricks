<%-- 
    Document   : products
    Created on : 8 Apr, 2018, 1:37:29 AM
    Author     : Shobhit Jaiswal
--%>

<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="connect.ConnectionProvider"%>
<%!
	 
	Connection conne=ConnectionProvider.getCon();
     %>	
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

<link href="bootstrap/style.css" rel="stylesheet"/>
<link href="bootstrap/icon/css/fontawesome-all.css" rel="stylesheet"/>
<link href="bootstrap/icon/css/fontawesome-all.min.css" rel="stylesheet"/>
<link href="bootstrap/css/carousel.css" rel="stylesheet" type="text/css"/>
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/ie-emulation-modes-warning.js" type="text/javascript"></script>
   <script src="bootstrap/js/jquery.min.js" type="text/javascript"></script>
 <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script> 
       
    </head>
    <body>
        <%@include file="header.jsp"%>
        <div class="jumbotron" style="border:1px solid #0000CC;background-color: #ffffff">
           
        <div >
						
						
                                                    <div style="margin-top: -45px">
                                                       
								
                                                                     <%
                                               // String s=request.getParameter("var");
                                               // out.println("s:"+s);
                                              
                                               int var=Integer.parseInt(request.getParameter("p"));
                                              
                                                    PreparedStatement ps13=conne.prepareStatement("select * from product where psubcat_id=?");
                                                   ps13.setInt(1,var);
                                                   
                                                     ResultSet rs13=ps13.executeQuery();
                                                     PreparedStatement ps14=conne.prepareStatement("select * from p_subcat where psubcat_id=?");
                                                   ps14.setInt(1,var);
                                                   
                                                     ResultSet rs14=ps14.executeQuery();
                                    while (rs13.next()) {        
        
                                  
                       if(rs14.next())
                       {
                                                %>
                                                
                                                <span class="input-group-addon"> <center> <h2 style="color:red"><%=rs13.getString("psubcatname")%></h2></center></span>
                                              
                                                <%
                                                }
                                                %>
                                                   <div class="col-lg-3 col-md-4 col-sm-6 text-center " style="margin-top: 50px;">
									
                                                       <a href="moreinfo.jsp?pid=<%=rs13.getInt("pid")%>"><img src="<%=rs13.getString("pimageurl")%>" alt=" "  style="width: 150px;height:250px"/></a>
										
									
									<h5 ><a href="moreinfo.jsp?pid=<%=rs13.getInt("pid")%>"><%=rs13.getString("pname")%></a><br>Rs.<%=rs13.getInt("price")%></h5>
									
                                                                      <a href="AddCart?pid=<%=rs13.getInt("pid")%>"> <button class="btn btn-danger"  style="margin-top:10px;">&nbsp Add To Cart  </button> </a>  
										
								</div>
                                                                                 
			
                                              
                                                <%
                                                   
                                                }
                                                %>      
                                                    
                                                           
                             
								<div class="clearfix"> </div>
							</div>
                                                  
                                                    
                                                    
                                                    
                                                    <div class="footer-copy1" style="padding-left:100px">
                                       <nav class="pages">
						<ul class="pagination">
							<li class="page-item disabled"><a href="#" class="page-link">Previous</a></li>
							<li class="page-item active"><a href="postpage1" class="page-link">1</a></li>
							<li class="page-item"><a href="postpage2" class="page-link">2</a></li>
							<li class="page-item"><a href="postpage3" class="page-link">3</a></li>
							<li class="page-item"><a href="postpage4" class="page-link">Next</a></li>
						</ul>
					</nav>
                                                    </div>
													
        </div></div>
						
        <%@include file="footer.jsp"%>                                        
    </body>
</html>
