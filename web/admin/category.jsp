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
    <%
    String msg3=request.getParameter("log4");
    if(msg3!=null)
     out.print("<script>alert('successfully added the product..')</script>");
  
    %>
    <%
    String msg2=request.getParameter("log3");
    if(msg2!=null)
     out.print("<script>alert('successfully added the product category..')</script>");
  
    %>
     <%
    String msg1=request.getParameter("log1");
    if(msg1!=null)
     out.print("<script>alert('successfully added the product sub-category..')</script>");
  
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

<header class="main_header bg-secondary">
	
		<div class="row">
			<div class="col-md-6">
				<h1><i class="fa fa-folder-open"></i>Category</h1>
			</div>
		</div>
	
</header>
<!--Section -->


<!--Section -->

<section id="sections" class="bg-faded sub_header">
	<div class="row">
		<div class="col-md-3">
			<a href="#" class="btn btn-primary btn-block" data-toggle="modal" data-target="#addCategory">
				<i class="fa fa-plus"></i>Add Category
			</a>
		</div>
		<div class="col-md-3" >
			<a href="#" class="btn btn-dark btn-block" data-toggle="modal" data-target="#addSubCategory">
				<i class="fa fa-plus"></i>Add SubCategory
			</a>
		</div>
		<div class="col-md-3">
			<a href="#" class="btn btn-success btn-block" data-toggle="modal" data-target="#addProducts">
				<i class="fa fa-plus"></i>Add Products
			</a>
		</div>
            <div class="col-md-3">
			<a href="CatInfoTable.jsp" class="btn btn-success btn-block" >
				Products Details
			</a>
		</div>
	</div>
</section>






<section id="sections" class="bg-faded sub_header">
	<div class="row">
		<div class="col-md-6 offset-md-6">
			<div class="input-group">
				<input type="search" class="form-control" placeholder="Search Here">
				<span class="input-group-btn">
				<button class="btn btn-secondary">Search</button>
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
						<h4>Category</h4>
					</div>
					<table class="table table-striped">
						<thead class="thead-dark">
							<tr>
								<th>Product Id</th>
								<th>Category</th>
								<th>Date Posted</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
                                                    <% 
                                                     PreparedStatement ps=connection.prepareStatement("select pid,pcname,post_date from product");
                                                     ResultSet rs=ps.executeQuery();
                                                    while (rs.next()) 
                                                    {
                                                       %>
							<tr>
                                                                <td><%=rs.getInt("pid")%></td>
								<td><%=rs.getString("pcname")%></td>
								
								<td><%=rs.getString("post_date")%></td>	
                                                                <td><a href="prodInfo.jsp?p=<%=rs.getInt("pid")%>" class="btn btn-secondary"><i class="fa fa-angle-double-right"></i></a></td>
							</tr>
							<% 
                                                    }
                                                    
                                                       %>
						</tbody>
					</table>
				</div>
			</div>			
		</div>
	</div>

</section>

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
				<form action="../jspFile/productCatAdd.jsp" method="post">
					<div class="form-group">
						<label for="category" class="form-control-label">Category</label>
                                                
                                               <input type="text" name="pcname" placeholder="product category name" class="form-control">
						
					</div>
                                    <div class="modal-footer">

                                        <input type="submit" value="Add Category"class="btn btn-success" />
                                        <button class="btn btn-secondary" data-dismiss="modal">Close
                                        </button>
                                        
                                        
			           </div>
				</form>
			</div>
			
		</div>
	</div>
</div>

<!-- Modal#SubCategory -->

<div class="modal fade" id="addSubCategory">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header bg-primary">
				<h5 class="modal-title">Add SubCategory</h5>
				<button class="close" data-dismiss="modal"><span>&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="../jspFile/productSubCatAdd.jsp" method="post">
					
					<div class="form-group">
						<label for="category" class="form-control-label">Category</label>
						<select class="form-control" name="pcname">
                                                    <%
                                                    PreparedStatement ps1=connection.prepareStatement("select pcname from prod_cat");
                                                     ResultSet rs1=ps1.executeQuery();
                                                    while (rs1.next()) 
                                                    {
                                                       %>
							<option><%=rs1.getString("pcname")%></option>
							
							<% 
                                                    }
                                                    
                                                       %>
						</select>
					</div>
					<div class="form-group">
						<label for="category" class="form-control-label">SubCategory</label>
						<input type="title" class="form-control" name="pscname">
						
					</div>
                                                <div class="form-group">
						<label for="category" class="form-control-label">SubCategory Id</label>
						<input type="title" class="form-control" name="psubcatid">
						
					</div>
                                    <div class="modal-footer">
                                        <input type="submit" value="Add SubCategory"class="btn btn-success" />
				<button class="btn tbn-secondary" data-dismiss="modal">Close
				</button>
				
			</div>
				</form>
			</div>
			
		</div>
	</div>
</div>

<!-- Modal#Products -->

<div class="modal fade" id="addProducts">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header bg-primary">
				<h5 class="modal-title">Add Product</h5>
				<button class="close" data-dismiss="modal"><span>&times;</span>
				</button>
			</div>
			<div class="modal-body">
                            <form action="../jspFile/productAdd.jsp" method="post" enctype="multipart/form-data">
                                <div class="form-group">
						<label for="post" class="form-control-label">Post Title</label>
						<select class="form-control" name="posttitle" required="">
                                                    <%
                                                    PreparedStatement ps4=connection.prepareStatement("select * from post");
                                                     ResultSet rs4=ps4.executeQuery();
                                                    
							while (rs4.next()) 
                                                    {
                                                        %>
							<option><%=rs4.getString("posttitle")%></option>
                                                        
                                                        <%
                                                            }
                                                            %>
			
						</select>
                                               
					</div>
                                
					
					<div class="form-group">
						<label for="category" class="form-control-label">Category name</label>
						<select class="form-control" name="pcatname" required="">
                                                    <%
                                                         PreparedStatement ps3=connection.prepareStatement("select pcname from prod_cat");
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
                                                        PreparedStatement ps2=connection.prepareStatement("select psubcatname from p_subcat");
                                                     ResultSet rs2=ps2.executeQuery();
							while (rs2.next()) 
                                                    {
                                                       %>
							<option><%=rs2.getString("psubcatname")%></option>
							
							<% 
                                                    }
                                                    
                                                       %>
                                                        
						</select>
                                                
					</div>
					<div class="form-group">
						<label for="file">Image upload</label>
						<input type="file" name="pimage"class="form-control-file" id="file" required="">
						<small class="text-muted ">Max 3MB</small>
					</div>
					<div class="form-group">
						<label for="product" class="form-control-label">Product Id</label>
                                                <input type="text" name="pid" placeholder="product id" class="form-control" required="">
                                               <br> <label for="product" class="form-control-label">Product Name</label>
						<input type="text" name="pname" class="form-control" required="">
                                                
						
					</div>
                                    <div class="form-group">
						<label for="product" class="form-control-label">Company Id</label>
						<input type="text" name="pcompid" placeholder="product company id" class="form-control" required="">
                                               <br> <label for="product" class="form-control-label">Company Name</label>
                                                <input type="text" name="pcompname" placeholder="product company name" class="form-control" required="">
						
					</div>
                                    <div class="form-group">
						<label for="product" class="form-control-label">Model of product</label>
						<input type="text" name="pmodel" class="form-control" required="">
                                                
						
					</div>
					<div class="form-group">
						<label for="product" class="form-control-label">Product Price</label>
						<input type="title" name="pprice" class="form-control" required="">
						
					</div>
					<div class="form-group">
						<label for="product" class="form-control-label">Quantity</label>
						<input type="number" name="pquantity" class="form-control" required="">
						
					</div>
					<div class="form-group">
						<label for="body">Details</label>
                                               <!-- <input type="text" name="pdesc" class="form-control">-->
						<textarea  name="editor1" class="form-control" required="">
						</textarea>
					</div>
                                    <div class="modal-footer">
                                        <input type="submit" value="Add Product"class="btn btn-success" />
                                        <button class="btn tbn-secondary" data-dismiss="modal">Close
                                        </button>
                                        
			          </div>
				</form>
			</div>
			
		</div>
	</div>
</div>



<script src="https://cdn.ckeditor.com/4.8.0/standard/ckeditor.js"></script>
<script>CKEDITOR.replace('editor1');
</script>
</body>
</html>