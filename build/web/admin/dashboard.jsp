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
</head>
<body>
    
    
    <%
    String msg3=request.getParameter("log2");
    if(msg3!=null)
     out.print("<script>alert('successfully added the post..')</script>");
  
    %>
    <%
    String msg1=request.getParameter("log1");
    if(msg1!=null)
     out.print("<script>alert('successfully Added')</script>");
  
    %>
    <%!
	 
	Connection connection=ConnectionProvider.getCon();
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
					<a href="dashboard.jsp" class="nav-link active">DashBoard</a>
				</li>
				<li class="navbar-item nav__item">
					<a href="post.jsp" class="nav-link">Post</a>
				</li>
				<li class="navbar-item nav__item">
					<a href="category.jsp" class="nav-link">Category</a>
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

<header class="main_header bg-primary">
	<div class="row">
		<div class="col-md-6">
			<h1><i class="fa fa-gear"></i>Dashboard</h1>
		</div>
	</div>
</header>
<!--Section -->

<section id="sections" class="bg-faded sub_header">
	<div class="row">
		<div class="col-md-6">
			<a href="#" class="btn btn-primary btn-block" data-toggle="modal" data-target="#addPost">
				<i class="fa fa-plus"></i>Add Post
			</a>
		</div>
		
		<div class="col-md-6">
			<a href="#" class="btn btn-success btn-block" data-toggle="modal" data-target="#addUser">
				<i class="fa fa-plus"></i>Add User
			</a>
		</div>
	</div>
</section>

<!-- Post -->
<section id="post">
	<div class="container">
		<div class="row">
			<div class="col-md-9">
				<div class="card main_card">
					<div class="card-header">
						<h4>Latest Posts</h4>
					</div>
					<table class="table table-striped">
						<thead class="thead-dark">
							<tr>
								<th>Product Id</th>
								<th>Post Title</th>
								<th>Product Category</th>
								<th>Date Posted</th>
                                                                <th>Details</th>
								
							</tr>
						</thead>
						<tbody>
                                                    <% 
                                                        
                                                     PreparedStatement ps=connection.prepareStatement("select pid,posttitle,pcname,post_date from product");
                                                     ResultSet rs=ps.executeQuery();
                                                     int c1=0;
                                                    while (rs.next()) 
                                                    {
                                                        c1++;
                                                       %>
							<tr>
                                                                <td><%=rs.getInt("pid")%></td>
								<td><%=rs.getString("posttitle")%></td>
								<td><%=rs.getString("pcname")%></td>
								<td><%=rs.getString("post_date")%></td>
								<td><a href="Details.jsp?var=<%=rs.getInt("pid")%>" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i></a></td>
							</tr>
							<% 
                                                    }
                                                    
                                                       %>
							
						</tbody>
					</table>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card  bg-primary text-white">
					<div class="card_inner">		
						<div class="card-block">
							<h3>Posts</h3>
							<h1 class="display-4"><i class="fa fa-pencil"></i><%=c1%></h1>
							<a href="post.jsp" class="btn  btn-outline-secondary text-white">View</a>
						</div>
					</div>
				</div>
				<div class="card cards bg-secondary text-white">
					<div class="card_inner">		
						<div class="card-block">
							<h3>Category</h3>
                                                        <%
                                                        PreparedStatement ps3=connection.prepareStatement("select pcname from prod_cat");
                                                     ResultSet rs3=ps3.executeQuery();
                                                   int c2=0;
							while (rs3.next()) 
                                                    {c2++;
                                                        }
                                                       %>
							<h1 class="display-4"><i class="fa fa-pencil"></i><%=c2%></h1>
							<a href="category.jsp" class="btn  btn-outline-dark text-white">View</a>
						</div>
					</div>
				</div>
				<div class="card cards bg-success text-white">
					<div class="card_inner">		
						<div class="card-block">
							<h3>Users</h3>
                                                        <% 
                                                     PreparedStatement ps2=connection.prepareStatement("select * from ad_user");
                                                     ResultSet rs2=ps2.executeQuery();
                                                     int c3=0;
                                                    while (rs2.next()) 
                                                    {
                                                        c3++;
                                                    }
                                                       %>
							<h1 class="display-4"><i class="fa fa-pencil"></i><%=c3%></h1>
							<a href="users.jsp" class="btn  btn-outline-secondary text-white">View</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</section>

<!-- Modal#Post -->

<div class="modal fade" id="addPost">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header bg-primary">
				<h5 class="modal-title">Add Post</h5>
				<button class="close" data-dismiss="modal"><span>&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="../jspFile/addPost.jsp" method="post">
                                    
					<div class="form-group">
						<label for="title" class="form-control-label">Post Title</label>
						<input type="text" name="posttitle" class="form-control">
					</div>
					
					<div class="modal-footer">
                                            <input type="submit" value="Add Post"class="btn btn-success" />
                                            <button class="btn btn-primary" data-dismiss="modal">Close
                                            </button>
			                </div>	
					
				</form>
			</div>
			
		</div>
	</div>
</div>

<!-- Modal#Category-->

<!--Modal#Add User-->

<div class="modal fade" id="addUser">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header bg-warning text-white">
				<h5 class="modal-title">Add User</h5>
				<button class="close" data-dismiss="modal"><span>&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="../jspFile/addUser.jsp" method="post">
                                    
					<div class="form-group">
						<label for="name">Name</label>
						<input type="name" name="aname" class="form-control">
						
					</div>
					<div class="form-group">
						<label for="email">Email</label>
						<input type="email" name="aemail" class="form-control">
						
					</div>
					
                                    <div class="modal-footer">
                                        <input type="submit" value="Add User"class="btn btn-success" />
				<button class="btn btn-secondary" data-dismiss="modal">Close
				</button>
				
			</div>
				</form>
			</div>
			
		</div>
	</div>
</div>




<!----
<script src="https://cdn.ckeditor.com/4.8.0/standard/ckeditor.js"></script>--->
<script>CKEDITOR.replace('editor1');
</script>
</body>
</html>