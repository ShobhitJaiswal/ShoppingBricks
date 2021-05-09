<%-- 
    Document   : CatInfoTable
    Created on : 8 Apr, 2018, 3:05:21 PM
    Author     : shravan
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
  
<body>
    <%!
	 
	Connection connection=ConnectionProvider.getCon();
     %>	
     
     <%
    String msg3=request.getParameter("log3");
    if(msg3!=null)
     out.print("<script>alert('successfully Updated the product..')</script>");
  
    %>
    <%
    String msg=request.getParameter("log4");
    if(msg!=null)
     out.print("<script>alert('successfully Deleted the product..')</script>");
  
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

<header class="main_header bg-success">
	
		<div class="row">
			<div class="col-md-6">
				<h1><i class="fa fa-User"></i>Cat. Table. Info.</h1>
			</div>
		</div>
	
</header>
<!--Section -->
<section id="sections" class="bg-faded sub_header">
	<div class="row">
		<div class="col-md-3 back">
			<a href="category.jsp" class="btn btn-dark btn-block text-white"><i class="fa fa-arrow-left"></i>Back to Category</a>
		</div>
		
	</div>
</section>

<section id="sections" class="bg-faded sub_header">
	<div class="row">
		<div class="col-md-6 offset-md-6">
			<div class="input-group">
				<input type="search" class="form-control" placeholder="Search user">
				<span class="input-group-btn">
				<button class="btn btn-success">Search</button>
				</span>
			</div>
		</div>
		
	</div>
</section>

<!-- Category -->
<section id="category">
	<div class="container-fluid">
		
            
			<div class="card-header thead-red">
						<h4>All Product</h4>
			</div>
                                    <table class="table table-striped table-responsive table-bordered table-condensed table-hover" >
						<thead class="thead-dark">
							<tr>
                                                            
                                                            <th>Cat. Id</th>
                                                            <th>SUBCat. Id</th>
								<th>Post Title</th>
								
								<th>Cat. Name</th>
								<th>SubCat. Name</th>
                                                                <th>Images</th>
                                                                <th>Product Id</th>
                                                                <th>Product Name</th>
                                                                <th>Company Id</th>
                                                                <th>Company Name</th>
                                                                <th>Model</th>
                                                                <th>Price</th>
                                                                <th>Quantity</th>
                                                                <th>Details</th>
                                                                <th>Post Date</th>
							</tr>
						</thead>
						<tbody>
                                                    <% 
                                                     PreparedStatement ps=connection.prepareStatement("select * from product");
                                                     ResultSet rs=ps.executeQuery();
                                                    while (rs.next()) 
                                                    {
                                                       %>
							<tr>
                                                            <%String path=rs.getString("pimageurl");
                                                           
                                                            %>
								<td><%=rs.getInt("pcat_id")%></td>
                                                                <td><%=rs.getInt("psubcat_id")%></td>
								<td><%=rs.getString("posttitle")%></td>
                                                                
                                                                <td><%=rs.getString("pcname")%></td>
                                                                <td><%=rs.getString("psubcatname")%></td>
                                                                <td><img src="<%="../"+path%>" style="width:60%; height:80px;"/></td>
                                                                <td><%=rs.getInt("pid")%></td>
                                                                <td><%=rs.getString("pname")%></td>
								<td><%=rs.getInt("pcompid")%></td>
								<td><%=rs.getString("pcompname")%></td>
                                                                <td><%=rs.getString("pmodel")%></td>
                                                                <td><%=rs.getInt("price")%></td>
                                                                <td><%=rs.getInt("pquantity")%></td>
                                                                <td><%=rs.getString("pdescription")%></td>
                                                                <td><%=rs.getDate("post_date")%></td>
								
							</tr>
							<% 
                                                    }
                                                    
                                                       %>
							
						</tbody>
                                        </table>
					
				</div>
					
		
        

</section>

<!-- Modal#Post -->







<script src="https://cdn.ckeditor.com/4.8.0/standard/ckeditor.js"></script>
<script>CKEDITOR.replace('editor1');
</script>
</body>
</html>
