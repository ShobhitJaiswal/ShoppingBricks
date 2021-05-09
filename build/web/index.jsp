<%-- 
    Document   : index
    Created on : 22 Mar, 2018, 2:23:58 PM
    Author     : Shobhit Jaiswal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="connect.ConnectionProvider"%>
 <%!
	 
	Connection connection=ConnectionProvider.getCon();
     %>	
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home :: ShoppingBricks</title>
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
    
    
  <%
    String msg1=request.getParameter("log1");
     if(msg1!=null)
     out.print("<script>alert('success registration')</script>"); 
  
    %>
    <%
    String msg=request.getParameter("log");
    if(msg!=null)
     out.print("<script>alert('Invalid uname or pass..@Login Fail@')</script>");
  
    %>
    <%
     String msg2=request.getParameter("log2");
    if(msg2!=null)
     out.print("<script>alert('@For View Cart Details Please SignIn If You Exist..Otherwise @Please SignUp ')</script>");
  
    %>
<nav class="navbar navbar-default">
    
    <!--header coding--->
    <jsp:include page="header.jsp"></jsp:include>
    <!--header coding--->
    
        <div class="container-fluid" style="padding:0px 0px 0px 0px">
        <div id="myCarousel" class="carousel slide" data-ride="carousel" style="height:300px">
          <!-- Indicators -->
          <ul class="carousel-indicators" >
            <li data-target="#myCarousel" data-slide-to="0" class="active" ></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
            <li data-target="#myCarousel" data-slide-to="5"></li>
            
           
          </ul>

          <!-- Wrapper for slides -->
          <div class="carousel-inner " style="height:300px">
                
              <div class="item active img-responsive">
                  <img class=" img-responsive " src="images/Imgs/ba1.jpg" style="width:100%;height:300px">
            </div>
            <div class="item  img-responsive">
              <img class=" img-responsive " src="images/s0.jpeg" style="width:100%;height:300px">
            </div>             
              <div class="item  img-responsive">
                  <img class=" img-responsive " src="images/Imgs/ba2.jpg" style="width:100%;height:300px">
            </div>
            <div class="item img-responsive">
              <img  class=" img-responsive " src="images/s2.jpg" style="width:100%;height:300px">
            </div>
             <div class="item img-responsive">
              <img  class=" img-responsive " src="images/s3.jpg" style="width:100%;height:300px">
            </div>
              <div class="item  img-responsive">
                  <img class=" img-responsive " src="images/Imgs/ba3.jpg" style="width:100%;height:300px">
            </div>
              <div class="item img-responsive">
              <img  class=" img-responsive " src="images/s4.jpg" style="width:100%;height:300px"/>
            </div>
              
              
          </div>

          <!-- Left and right controls -->
          <a class="left carousel-control" href="#myCarousel" data-slide="prev"  >
              <span class="glyphicon glyphicon-chevron-left" style="background-color:#000000"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#myCarousel" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" style="background-color:#000000"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
    </div>   
 <!------------------------slider end-------------------->    
 <!--------start banner-bottom  table list menu------>
 <div class="container-fluid" style="border: 2px solid #671979;border-top:2px solid #671979; background-color: #ffffff;margin-top:-50px;">
		<div class="container-fluid" >
			
			<div class="row jumbotron" style="background-color: #ffffff" >
                            
				<div role="tabpanel" data-example-id="togglable-tabs">
				<ul id="myTab" class="nav nav-tabs " role="tablist">
                                            <% 
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
                                                        %>                               
						<li role="presentation" class="active"><a href="#<%=a%>" id="home-tab" role="tab" data-toggle="tab" aria-controls="home"><%=rs.getString("pcname")%></a></li>
						
                                                <% }else 
                                                       {
                                                %>
                                                <li role="presentation" ><a href="#<%=a%>" id="home-tab" role="tab" data-toggle="tab" aria-controls="home"><%=rs.getString("pcname")%></a></li>
                                                 <%  }

                                                                        }

                                                 
                                                                        %>
					</ul>
                                        
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade active in" id="1" aria-labelledby="home-tab">
						
                                                    <div style="margin-top: 20px">
                                                       
								
                                                                     <%
                                               // String s=request.getParameter("var");
                                               // out.println("s:"+s);
                                              
                                               
                                                
                                                    PreparedStatement ps1=connection.prepareStatement("select * from product where pcat_id=? ");
                                                    ps1.setInt(1,1);
                                                   
                                                     ResultSet rs1=ps1.executeQuery();
                                    while (rs1.next()) {        
        
                                  
                       
                                                %>
                                                
                                                
                                                   <div class="col-lg-3 col-md-4 col-sm-6 text-center " style="margin-top: 50px;">
									
                                                       <a href="moreinfo.jsp?pid=<%=rs1.getInt("pid")%>"><img src="<%=rs1.getString("pimageurl")%>" alt=" "  style="width: 130px;height:250px"/></a>
										
									
									<h5 ><a href="moreinfo.jsp?pid=<%=rs1.getInt("pid")%>"><%=rs1.getString("pmodel")%></a><br>Rs.<%=rs1.getInt("price")%></h5>
									
                                                                      <a href="AddCart?pid=<%=rs1.getInt("pid")%>">  <button class="btn btn-danger"  style="margin-top:10px;" >&nbsp Add To Cart  </button> </a>  
										
								</div>
                                                                                 
			
                                              
                                                <%
                                                   
                                                }
                                                %>      
                                                    
                                                           
                             
								<div class="clearfix"> </div>
							</div>

						</div>
                                                <div role="tabpanel" class="tab-pane fade" id="2" aria-labelledby="video-tab" >
							<div class="text-center" style="margin-top: 20px">
								     <%
                                               // String s=request.getParameter("var");
                                               // out.println("s:"+s);
                                              
                                               
                                                
                                                    PreparedStatement ps2=connection.prepareStatement("select * from product where pcat_id=? ");
                                                    ps2.setInt(1,2);
                                                   
                                                     ResultSet rs2=ps2.executeQuery();
                                    while (rs2.next()) {        
        
                                    
                       
                                                %>
                                                
                                                
                                                    
                                               
                                                <div class="col-lg-3 col-md-4 col-sm-6 text-center " style="margin-top: 50px;">
									
						 	<a href="moreinfo.jsp?pid=<%=rs2.getInt("pid")%>"> <img src="<%=rs2.getString("pimageurl")%>" alt=" " style="width: 180px;height:150px"/></a>
										
									
									<h5 ><a href="moreinfo.jsp?pid=<%=rs2.getInt("pid")%>"><%=rs2.getString("pmodel")%></a><br>Rs.<%=rs2.getInt("price")%></h5>
									
                                                                        <a href="AddCart?pid=<%=rs2.getInt("pid")%>"> <button class="btn btn-danger"  style="margin-top:10px;">&nbsp Add To Cart  </button> </a>
										
                                                                       
                                                                 
                                                                        </div>
                                                                                 
			
                                              
                                                <%
                                                   
                                                }
                                                %>      
							
								<div class="clearfix"> </div>
							</div>
				</div>                              
                        
                                                
			<div role="tabpanel" class="tab-pane fade" id="3" aria-labelledby="audio-tab">
							<div style="margin-top: 20px">
                                                  
                                                            
                                                            
                                                            	     <%
                                               // String s=request.getParameter("var");
                                               // out.println("s:"+s);
                                              
                                              
                                                
                                                    PreparedStatement ps3=connection.prepareStatement("select * from product where pcat_id=? ");
                                                    ps3.setInt(1,3);
                                                   
                                                     ResultSet rs3=ps3.executeQuery();
                                    while (rs3.next()) {        
        
                                   
                       
                                                %>
                                                
                                                 
                                                    <div class="col-lg-3 col-md-4 col-sm-6 text-center" style="margin-top: 50px;">
                                                        <a href="moreinfo.jsp?pid=<%=rs3.getInt("pid")%>">	<img class="text-center" src="<%=rs3.getString("pimageurl")%>" alt=" " style="width: 190px;height:150px"/></a>
										
									
									<h5 ><a href="moreinfo.jsp?pid=<%=rs3.getInt("pid")%>"><%=rs3.getString("pmodel")%></a><br>Rs.<%=rs3.getInt("price")%></h5>
									
                                                                        
										<a href="AddCart?pid=<%=rs3.getInt("pid")%>"> <button class="btn btn-danger"  style="margin-top:10px;">&nbsp Add To Cart  </button> </a>
                                                            	
								</div>
                                                                                 
			
                                              
                                                <%
                                                   
                                                }
                                                %>  
                                                            
                                              
								<div class="clearfix"> </div>
							</div>
			</div>

		<div role="tabpanel" class="tab-pane fade" id="4" aria-labelledby="tv-tab">
							<div style="margin-top: 20px">
								
                                                             <%
                                               // String s=request.getParameter("var");
                                               // out.println("s:"+s);
                                              
                                               
                                                
                                                    PreparedStatement ps4=connection.prepareStatement("select * from product where pcat_id=? ");
                                                    ps4.setInt(1,4);
                                                   
                                                     ResultSet rs4=ps4.executeQuery();
                                    while (rs4.next()) {        
        
                                   
                                                %>
                                                
                                                 
                                                    <div class="col-lg-3 col-md-4 col-sm-6 text-center" style="margin-top: 50px;">
                                                        <a href="moreinfo.jsp?pid=<%=rs4.getInt("pid")%>"><img class="text-center" src="<%=rs4.getString("pimageurl")%>" alt=" " style="width: 180px;height:150px"/></a>
										
									
									<h5 ><a href="moreinfo.jsp?pid=<%=rs4.getInt("pid")%>"><%=rs4.getString("pmodel")%></a><br>Rs.<%=rs4.getInt("price")%></h5>
									
                                                                        
										<a href="AddCart?pid=<%=rs4.getInt("pid")%>"> <button class="btn btn-danger"  style="margin-top:10px;">&nbsp Add To Cart  </button> </a>
                                                           
								</div>
                                                                                 
			
                                              
                                                <%
                                                   
                                                }
                                                %>  
                                                            
                                                            
						
								<div class="clearfix"> </div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="5" aria-labelledby="kitchen-tab">
							<div style="margin-top: 20px">
								
                                                              <%
                                               // String s=request.getParameter("var");
                                               // out.println("s:"+s);
                                              
                                               
                                                
                                                    PreparedStatement ps5=connection.prepareStatement("select * from product where pcat_id=? ");
                                                    ps5.setInt(1,5);
                                                   
                                                     ResultSet rs5=ps5.executeQuery();
                                    while (rs5.next()) {        
        
                                   
                                                %>
                                                
                                                 
                                                    <div class="col-lg-3 col-md-4 col-sm-6 text-center" style="margin-top: 50px;">
                                                        <a href="moreinfo.jsp?pid=<%=rs5.getInt("pid")%>"><img class="text-center" src="<%=rs5.getString("pimageurl")%>" alt=" " style="width: 180px;height:180px"/></a>
										
									
									<h5 ><a href="moreinfo.jsp?pid=<%=rs5.getInt("pid")%>"><%=rs5.getString("pmodel")%></a><br>Rs.<%=rs5.getInt("price")%></h5>
									
                                                                        
										<a href="AddCart?pid=<%=rs5.getInt("pid")%>"> <button class="btn btn-danger"  style="margin-top:10px;">&nbsp Add To Cart  </button> </a>
                                                           
								</div>
                                                                                 
			
                                              
                                                <%
                                                   
                                                }
                                                %>  
                                                            
                                                            
								<div class="clearfix"> </div>
							</div>
                                                    
						</div>
					</div>
				</div> 
			</div>
			
		</div>
     
	</div>
	<!-- //banner-bottom --> 
 
 
  </nav>

    <!-----------------------------------      END OF HEADER CODING-------------------------------------------------------------------------------->
   
    <!-----------------------------------     Footer coding----------------------------->
    <jsp:include page="footer.jsp"></jsp:include>
<!-----------------------------------    end of Footer coding------------------------------------------>
</body>
</html>
