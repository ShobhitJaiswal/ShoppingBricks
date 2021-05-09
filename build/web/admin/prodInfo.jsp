<%-- 
    Document   : details.jsp
    Created on : 24 Mar, 2018, 1:31:00 PM
    Author     : shravan
--%>

<%@page import="beans.ProductUpdateBean"%>
<%@page import="connect.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Admin-panel</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">	
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <style>
     .admin_logo{
                width:30%;
                
                
            }
  .logo_agile {
    text-align: center;
}
.logo_agile span {
    background: #000;
    padding:5px 17px;
    font-weight: bold;
    color: #fff;
}
  
  .nav__item
	{
		float:left;
		margin-left:15px;
		padding:0 10px;
	}
	.navbar-nav li:hover{
						color:red;
					}
	.navbar-nav li:active{
					
					color:white;
					}
				
	.dropdown .dropdown-menu a:hover{	
					background-color:gray;
					color:white;
					}
		.navbar-nav.second_navbar{
								
								margin-left:auto;
								}
		header.main_header{
							padding:10px;
							color:black;
							
							}
		section.sub_header{
							
							padding:10px;
							margin:10px;
							}
		.card.main_card{
						overflow:scroll;
						
						}
		.card .card_inner{
				margin-left:30px;
					}
		.card.cards{
					margin-top:10px;
					}
  </style>
</head>
<body>
    <%!
	 
	Connection connection=ConnectionProvider.getCon();
     %>	
    
    <%
       // String id=request.getParameter("pcatid");
        int id=Integer.parseInt(request.getParameter("p"));
       
        
       
        %>
    
<nav class="navbar navbar-expand-md navbar-dark bg-dark sticky-top">
		
		<button class="navbar-toggler" data-toggle="collapse" data-target="#collapse_target">
		
			<span class="navbar-toggler-icon"></span>
		</button>
		
		<div class="collapse navbar-collapse" id="collapse_target">
                    <div class="col-md-3">
			<a class="navbar-brand logo_agile" href="../index.jsp" ><img src="../images/logo4.png" class="admin_logo text-left"/></a> 
                    </div>
		<div class="col-md-6">
		<ul class="navbar-nav">
				<li class="navbar-item nav__item" >
					<a href="dashboard.jsp" class="nav-link ">DashBoard</a>
				</li>
				<li class="navbar-item nav__item">
					<a href="post.jsp" class="nav-link">Post</a>
				</li>
				<li class="navbar-item nav__item">
					<a href="category.jsp" class="nav-link active">Category</a>
				</li>
				<li class="navbar-item nav__item">
					<a href="users.jsp" class="nav-link">Users</a>
				</li>
			</ul>
                </div>
                    <div class="col-md-3">
			<ul class="navbar-nav second_navbar list-inline ">
				<li class="nav-item dropdown ">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                            
                                            <img class="img-circle" src="../images/shravan.jpg"  style="width:10%; height:40px; margin-right:5%;"/>Welcome Shravan
					</a>
                                    
					<div class="dropdown-menu ">
						<a href="profile.jsp" class="dropdown-item"><i class="fa fa-user-circle"></i> Profile
						</a>
						<a href="setting.jsp" class="dropdown-item"><i class="fa fa-gear"></i> Setting
						</a>
					</div>
                                   
				</li> 
				<li class="nav-item">
                                    
                                        <a href="sk_admin.jsp" ><i class="fa fa-user-times" style="margin-right:40px;margin-top: 10px;">Logout</i></a>
                                       
                                   
                                </li>
                        </ul>
                    </div>
		</div>
</nav>

<header class="main_header bg-primary" >
	<div class="row">
		<div class="col-md-6">
			<h1>Post One</h1>
		</div>
	</div>
</header>
<!--Section -->

<section id="sections" class="bg-faded sub_header">
	<div class="row">
		<div class="col-md-3 back">
			<a href="category.jsp" class="btn btn-dark btn-block text-white"><i class="fa fa-arrow-left"></i>Back to Dashboard</a>
		</div>
		
	</div>
</section>

<!-- Post -->
<section id="del" >
	<div class="container" >
		<div class="row">
			<div class="col">
				<div class="card">
					<div class="card-header">
						<h4>Delete Post</h4>
					</div>
					<div class="card-block">
                                            
                                            
                                            <form action="../jspFile/productDelete.jsp" method="get" enctype="multipart/form-data">
                             
                                 <div class="form-group">
						<label for="category" class="form-control-label">Product Id</label>
                                                <%
                                                   // PreparedStatement ps4=connection.prepareStatement("select posttitle from post");
                                                    PreparedStatement ps5=connection.prepareStatement("select pid from product where pid='"+id+"'");
                                                     ResultSet rs5=ps5.executeQuery();
                                                    
							while (rs5.next()) 
                                                    {
                                                        %>
                                             
				           <input type="text" name="pid" value="<%=rs5.getInt("pid")%>" placeholder="product id" class="form-control" required="">               
                                                    <%
                                                 }
                                                            %>       	
                                 </div>
                                 
                                 
					
					<div class="modal-footer">
                                               <div class="col-md-3">
                                                       <input type="submit" value="Delete" class="btn btn-danger btn-block text-black text-right"/>
                                               </div>
                                            </div>
                                    
				</form>
                                           
					</div>
				</div>
			</div>			
		</div>
	</div>

</section>
                                 
                                 
                                 
<br><section id="post"style="padding-top: 20px;">
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="card">
					<div class="card-header">
						<h4>Update Post</h4>
					</div>
					<div class="card-block">
                                            
                                    
                                            
						<form action="../jspFile/productUpdate.jsp" method="get" enctype="multipart/form-data">
                                <div class="form-group">
						<label for="post" class="form-control-label">Post Title</label>
						
                                                    <%
                                                   // PreparedStatement ps4=connection.prepareStatement("select posttitle from post");
                                                    PreparedStatement ps4=connection.prepareStatement("select posttitle from product where pid='"+id+"'");
                                                     ResultSet rs4=ps4.executeQuery();
                                                    
							while (rs4.next()) 
                                                    {
                                                        %>
							
                                                       <br><input type="text" name="posttitle" value="<%=rs4.getString("posttitle")%>" placeholder="product cat id" class="form-control" required=""> 
                                                        
			
						
                                               
					</div>
                                 
				                          <%
                                                            }
                                                            %>	
                                 
					
					<div class="form-group">
						<label for="category" class="form-control-label">Category name</label>
						<select class="form-control" name="pcatname" required="">
                                                    <%
                                                         //PreparedStatement ps3=connection.prepareStatement("select pcname from prod_cat");
                                                         PreparedStatement ps3=connection.prepareStatement("select pcname from product where pid='"+id+"'");
                                                     ResultSet rs3=ps3.executeQuery();
                                                   
							while (rs3.next()) 
                                                    {
                                                        
                                                       %>
							<option><%=rs3.getString("pcname")%></option>
							
							<% 
                                                    }
                                                    
                                                       %>
							
						</select>
                                               
					</div>
                                   
					<div class="form-group">
						<label for="subcategory" class="form-control-label">SubCategory</label>
						<select class="form-control" name="pscatname" required="">
                                                    <%
                                                        //PreparedStatement ps2=connection.prepareStatement("select psubcatname from p_subcat");
                                                        PreparedStatement ps2=connection.prepareStatement("select * from product where pid='"+id+"'");
                                                     ResultSet rs2=ps2.executeQuery();
							while (rs2.next()) 
                                                    {
                                                      %>
							<option><%=rs2.getString("psubcatname")%></option>
							
							
                                                        
						</select>
                                                
					</div>
                                                               
                                        
					
					<div class="form-group">
						<label for="product" class="form-control-label">Product Id</label>
                                                <input type="text" name="pid" value="<%=rs2.getInt("pid")%>" placeholder="product id" class="form-control" required="">
                                               <br> <label for="product" class="form-control-label">Product Name</label>
						<input type="text" name="pname" value="<%=rs2.getString("pname")%>" class="form-control" required="">
                                                
						
					</div>
                                    <div class="form-group">
						<label for="product" class="form-control-label">Company Id</label>
						<input type="text" name="pcompid" value="<%=rs2.getInt("pcompid")%>" placeholder="product company id" class="form-control" required="">
                                               <br> <label for="product" class="form-control-label">Company Name</label>
                                                <input type="text" name="pcompname" value="<%=rs2.getString("pcompname")%>" placeholder="product company name" class="form-control" required="">
						
					</div>
                                    <div class="form-group">
						<label for="product" class="form-control-label">Model of product</label>
						<input type="text" name="pmodel" value="<%=rs2.getString("pmodel")%>" class="form-control" required="">
                                                
						
					</div>
					<div class="form-group">
						<label for="product" class="form-control-label">Product Price</label>
						<input type="title" name="pprice" value="<%=rs2.getInt("price")%>" class="form-control" required="">
						
					</div>
					<div class="form-group">
						<label for="product" class="form-control-label">Quantity</label>
						<input type="number" name="pquantity" value="<%=rs2.getInt("pquantity")%>" class="form-control" required="">
						
					</div>
                                                       <% 
                                                    }
                                                    
                                                       %>
					<div class="form-group">
						<label for="body">Details</label>
                                               <!-- <input type="text" name="pdesc" class="form-control">-->
						<textarea  name="editor1" class="form-control" required="">
						</textarea>
					</div>
                                            <div class="modal-footer">
                                              <div class="col-md-3">
                                                        
                                                       <input type="submit" value="Save Changes" class="btn btn-success btn-block text-black"/>
                                               </div>
                                               
                                            </div>
                                    
				</form>
					</div>
				</div>
			</div>			
		</div>
	</div>

</section>







<script src="https://cdn.ckeditor.com/4.8.0/standard/ckeditor.js"></script>
<script>CKEDITOR.replace('editor1');
</script>
</body>
</html>