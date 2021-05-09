<%-- 
    Document   : header
    Created on : 22 Mar, 2018, 2:17:42 PM
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header Page</title>

<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

<link href="bootstrap/style.css" rel="stylesheet"/>
<link href="bootstrap/icon/css/fontawesome-all.css" rel="stylesheet"/>
<link href="bootstrap/icon/css/fontawesome-all.min.css" rel="stylesheet"/>
<link href="bootstrap/css/carousel.css" rel="stylesheet" type="text/css"/>
      <script src="bootstrap/js/bootstrap.js" type="text/javascript"></script>
    <script src="bootstrap/js/ie-emulation-modes-warning.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</head>
<body>
     <%!
	 
	Connection connection=ConnectionProvider.getCon();
     %>	
     
    <div id="home1" class="container-fluid" style="background-color:#675e8b">
   <div class="row">
   
      <div class="col-md-2 text-center logo">
          <a href="index.jsp"><img src="images/logo4.png"/></a>
      </div>
   
   <div class="col-md-6" style="margin-top:60px">
     <form>
         <div class="input-group">
             <input type="text" class="form-control" placeholder="search for products.. " /> 
      <div class="input-group-btn">
	    <button class="btn btn-default" type="submit" style="height:34px">
            <i class="glyphicon glyphicon-search"></i>
            </button>
	  </div>
         </div>
     </form>
    </div>
   
   
      <div class="col-md-4 text-right">
          <div class="row" style="margin:10px">
              <ul class="list-inline menu">
                  <li><a href="#"><i class=" fa fa-phone"> </i> 24x7<i>-Customer Care: +91 8896867785</i></a></li>
              </ul>
          </div>
          
          <!------------ more and add cart sign in & sign out------->
          
		   <div class="row" style="margin-top: 80px">
	         <ul class="list-inline menu">
                     <li class="dropdown more_list"><a class="dropdown-toggle" data-toggle="dropdown" href="#">More   <span class="caret"></span></a>
                       <ul class="dropdown-menu">
                         <li><a href="#"><i class="fa fa-user"> </i> Sell </a></li>
			 <li role="presentation" class="divider"></li>
                         <li><a href="#"><i class=" fa fa-gift"> </i> Today's Deal </a></li>
			 <li role="presentation" class="divider"></li>
                        <li><a href="#"><i class=" fa fa-phone"> </i> 24x7 Customer Care</a></li>
			<li role="presentation" class="divider"></li>
			<li><a href="#"><i class=" fa fa-map-marker"> </i> Track Order</a></li>
                       </ul>
                      </li>
                     <li><a href="viewCart.jsp" class="active"><i class="fa fa-shopping-cart"></i> Cart</a></li>
                     <%
                     
                     String label1=(String)session.getAttribute("user2");
                     
                     %>
                     <li class="dropdown more_list"><a style=" color:#4cae4c" class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fas fa-user"></i> Welcome <%=label1%><span class="caret"></span></a>
                       
                       <ul class="dropdown-menu">
                         <li data-toggle="modal" data-target="#uprofile"><a href="#"><i class="fa fa-user"> </i> Your Profile </a></li>
			 <li role="presentation" class="divider"></li>
                         <li><a href="#"> Change Paasword </a></li>
			 <li role="presentation" class="divider"></li>
                        <li><a href="#"><i class=" fa fa-gift"> </i> Your Order</a></li>
                        <li role="presentation" class="divider"></li>
			<li ><a href="logout.jsp"><i class="fas fa-user"></i><span> Logout</span></a></li>
			
                       </ul>
                    
                       </li>
			    
            
		      </ul>
              
                    
		    </div>
		<!------------ more and add cart sign in & sign out------->
			                       <div class="row" >
            <div class="col-lg-12">
<!-- Modal -->
               <div id="uprofile" class="modal fade" role="dialog">
                  <div class="modal-dialog">

    <!-- Modal content-->
                   <div class="modal-content">
                     <div class="modal-header">
                       <button type="button" class="close" data-dismiss="modal">&times;</button>
                         <!---   <h4 class="modal-title"></h4>--->
                     </div>
                   <div class="modal-body">
                        <div class="panel panel-primary">
                            <div class="panel-heading text-left">
                                Welcome to CREATE ACCOUNT !!
                            </div>
                         <div class="panel-body">
                                
                             <form action="jspFile/register.jsp" method="post">
                      
                                 <div class="form-group">
                                    <input type="text" name="uid" placeholder="Your User Id" required="" class="form-control" />
                                </div>
                                 <div class="form-group">
                                    <input type="text" name="uname" placeholder="Your Name" required="" class="form-control" />
                                </div>
                                 <div class="form-group">
                                    <input type="password"  name="upass" placeholder="your Password" required=""class="form-control" />
                                </div>
                                <div class="form-group">
                                    <input type="password" name="ucpass" placeholder="confirm Password" required="" class="form-control" />
                                </div>  
                                 <div class="form-group">
                                    <input type="email"  name="uemail" placeholder="Your Email" required="" class="form-control" />
                                </div>
                                 <div class="form-group">
                                    <input type="text" name="uphone" placeholder="Phone Number" required="" class="form-control" />
                                </div>
                               
                                   
                                <div class="form-group text-left">
                                    <input type="submit" value="CREATE ACCOUNT" class="btn btn-success" />
                                    <input type="reset" value="RESET"class="btn btn-primary" />
                                    
                                </div> 
                             </form>                              
                                
                                
                            </div>
                        </div>
          
                    </div>
                     
                       </div>
                     </div>
                 </div>
            </div>
        </div> 		
		 
      </div>
   
   </div>
  </div>
    
   
    <!--------------------start of menu bar-------------->   
    <div class="container-fluid" style="background-color:#671979">
          <div class="navbar-header" >
             
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              
              
            </button>
          </div>
            
            <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav home_menu">
                <li><a href="index.jsp" class="hm">Home</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle hm" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="background-color:#671979">Products<span class="caret"></span></a>
                <ul class="dropdown-menu multi-column-dropdown columns-3">
                  <div class="row">
                                             <% 
                                                     PreparedStatement ps=connection.prepareStatement("select pcat_id,pcname from prod_cat");
                                                     ResultSet rs=ps.executeQuery();
                                                     
                                                     
                                                    
                                                    
                                                    
                                                    while (rs.next()) 
                                                        
                                                    {
                                                      int  s=rs.getInt("pcat_id");
                                                        PreparedStatement ps1=connection.prepareStatement("select * from p_subcat where pcat_id=? ");
                                                      ps1.setInt(1, s);
                                                     ResultSet rs1=ps1.executeQuery();
                                                       %>
									<div class="col-lg-2">
										<ul class="multi-column-dropdown">
                                                                                  
											<h6><%=rs.getString("pcname")%></h6>
                                                                                        <% 
                                                                                            while (rs1.next()) 
                                                                                        {
                                                                                           %>
											<li><a href="products.jsp?p=<%=rs1.getInt("psubcat_id")%>"><%=rs1.getString("psubcatname")%></a></li>
                                                                                        
											 <%
                                                                                            }
                                                                                            %>
										</ul>
									</div>
                                                                        <%
                                                                        }
                                                                        %>
                                                                        
									
									
									<div class="clearfix"></div>
								</div>
                </ul>
              </li>
                <li><a href="validate.jsp" class="hm">My Order</a></li>
                
              <li><a href="aboutus.jsp" class="hm">About Us</a></li>
              <li><a href="contact.jsp" class="hm">Contact Us</a></li>
              
              
              </li>
            </ul>
            
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
        <!--------------------end of menu bar-------------->
  

    
</body>
</html>
