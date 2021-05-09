<%-- 
    Document   : profile
    Created on : 24 Mar, 2018, 1:36:03 PM
    Author     : shravan
--%>

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
  
<body>
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
			<h1><i class="fa fa-user-circle"></i>Profile</h1>
		</div>
	</div>
</header>
<!--Section -->

<section id="sections" class="bg-faded sub_header">
	<div class="row">
		<div class="col-md-3 back">
			<a href="dashboard.jsp" class="btn btn-dark btn-block text-white"><i class="fa fa-arrow-left"></i>Back to Dashboard</a>
		</div>
		<div class="col-md-3">
			<a href="dashboard.jsp" class="btn btn-success btn-block text-black"><i class="fa fa-check"></i>Save Changes</a>
		</div>
		<div class="col-md-3">
			<a href="dashboard.jsp" class="btn btn-danger btn-block text-black"><i class="fa fa-remove"></i>Delete Account</a> 
		</div>
		
	</div>
</section>

<!-- Post -->
<section id="post">
	<div class="container">
		<div class="row">
			<div class="col-md-9">
				<div class="card">
					<div class="card-header">
						<h4>Edit Profile</h4>
					</div>
					<div class="card-block">
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
								<input type="file" class="form-control-file" id="blah" onchange="readURL(this);">
								<small class="text-muted ">Max 3MB</small>
							</div>
							<div class="form-group">
								<label for="body">Description</label>
								<textarea name="editor1" class="form-control">
								</textarea>
							</div>
						</form>
					</div>
				</div>
			</div>	
			<div class="col-md-3">
				<h3 class="text-center">Avatar</h3>
				<img id="blah" src="#" alt="Avatar Image" class="img-fluid img-block image-responsive">
				<button class="btn btn-primary btn-block">Edit Image</button>
				<button class="btn btn-danger btn-block">Delete Image</button>
				
			</div>
			
		</div>
	</div>

</section>

<script>
function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah')
                    .attr('src', e.target.result)
                    .width(150)
                    .height(200);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
</script>





<script src="https://cdn.ckeditor.com/4.8.0/standard/ckeditor.js"></script>
<script>CKEDITOR.replace('editor1');
</script>
</body>
</html>