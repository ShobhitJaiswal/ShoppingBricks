<%-- 
    Document   : users
    Created on : 24 Mar, 2018, 1:37:48 PM
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
					<a href="category.jsp" class="nav-link">Category</a>
				</li>
				<li class="navbar-item nav__item">
					<a href="users.jsp" class="nav-link active">Users</a>
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
				<h1><i class="fa fa-User"></i>Users</h1>
			</div>
		</div>
	
</header>
<!--Section -->

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
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="card main_card">
					<div class="card-header">
						<h4>Users</h4>
					</div>
					<table class="table table-striped">
						<thead class="thead-dark">
							<tr>
								
								<th>Name</th>
								<th>Email</th>
								<th>Registration Date</th>
							</tr>
						</thead>
						<tbody>
                                                    <% 
                                                     PreparedStatement ps=connection.prepareStatement("select * from ad_user");
                                                     ResultSet rs=ps.executeQuery();
                                                    while (rs.next()) 
                                                    {
                                                       %>
							<tr>
								
								<td><%=rs.getString("aname")%></td>
								<td><%=rs.getString("aemail")%></td>
								<td><%=rs.getDate("regdate")%></td>
								
							</tr>
							<% 
                                                    }
                                                    
                                                       %>
							
						</tbody>
					
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
				<form action="">
					<div class="form-group">
						<label for="title" class="form-control-label">Title</label>
						<input type="text" class="form-control">
					</div>
					<div class="form-group">
						<label for="category" class="form-control-label">Category</label>
						<select class="form-control">
							<option>Mobiles</option>
							<option>Accessories</option>
							<option>Home</option>
						</select>
					</div>
					<div class="form-group">
						<label for="file">Image upload</label>
						<input type="file" class="form-control-file" id="file">
						<small class="text-muted ">Max 3MB</small>
					</div>
					<div class="form-group">
						<label for="body">Body</label>
						<textarea name="editor1" class="form-control">
						</textarea>
					</div>
					
						
				</form>
			</div>
			<div class="modal-footer">
				<button class="btn tbn-secondary" data-dismiss="modal">Close
				</button>
				<button class="btn btn-primary" data-dismiss="modal">Add Post
				</button>
			</div>
		</div>
	</div>
</div>

<!-- Modal#Category-->
<div class="modal fade" id="addCategory">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header bg-secondary text-white">
				<h5 class="modal-title">Add Category</h5>
				<button class="close" data-dismiss="modal"><span>&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form >
					<div class="form-group">
						<label for="title" class="form-control-label">Title</label>
						<input type="title" class="form-control">
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button class="btn btn-secondary" data-dismiss="modal">Close
				</button>
				<button class="btn btn-success" data-dismiss="modal">Add Category
				</button>
			</div>
		</div>
	</div>
</div>
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
				<form >
					<div class="form-group">
						<label for="name">Name</label>
						<input type="name" class="form-control">
						
					</div>
					<div class="form-group">
						<label for="email">Email</label>
						<input type="email" class="form-control">
						
					</div>
					<div class="form-group">
						<label for="password">Password</label>
						<input type="password" class="form-control">
						
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button class="btn btn-secondary" data-dismiss="modal">Close
				</button>
				<button class="btn btn-warning" data-dismiss="modal">Add User
				</button>
			</div>
		</div>
	</div>
</div>





<script src="https://cdn.ckeditor.com/4.8.0/standard/ckeditor.js"></script>
<script>CKEDITOR.replace('editor1');
</script>
</body>
</html>