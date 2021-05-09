<%@page import="java.sql.Connection"%>
<%@page import="connect.ConnectionProvider"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
  <%  
Integer pid=Integer.parseInt(request.getParameter("pid")); 
String query="select * from product where pid="+pid;
Connection con=ConnectionProvider.getCon(); 
Statement stmt= con.createStatement();

ResultSet rs13 =stmt.executeQuery(query);
while(rs13.next())
{
	 
	Integer price1=Integer.parseInt(rs13.getString("price"));
	 
	price1=price1-(price1*10)/100;
	 
	
	 
	Integer pid1=rs13.getInt("pid");
	pid1=pid1+1;
	
	 
%>	
<style>
/*** Main product view ***/
#mainview #breadcrumb {margin-bottom:10px;}
#description {float:right;width:500px;}
	#description h1 {font-family: 'Terminal Dosis', "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, sans-serif;font-size:2em;font-weight:300;}
	#description p {padding:0px 0px 14px 0px;}
	#price {font-size:1.333em;display:block;color:#ff5454;padding:14px 0px;}
		#price span {color:#333;font-size:0.722em;float:right;}
	#description select {width:240px;margin-right:10px;}
	#description .continue {width:240px;margin-right:10px;}
	#images {float:left;width:460px;position:relative;}
		#images div, #images a {float:left;}
		#images a img {float:left;border:1px solid #fff;-webkit-box-shadow:0px 0px 5px 0px rgba(180, 160, 145, 0.2);-moz-box-shadow:0px 0px 5px 0px rgba(180, 160, 145, 0.2);box-shadow:0px 0px 5px 0px rgba(180, 160, 145, 0.2);}
			#images a:hover img {-webkit-box-shadow:0px 0px 5px 0px rgba(180, 160, 145, 0.8);-moz-box-shadow:0px 0px 5px 0px rgba(180, 160, 145, 0.8);box-shadow:0px 0px 5px 0px rgba(180, 160, 145, 0.8);}
	#images p {background:#ffffff;padding:5px 0px;margin:0px 20px 10px 0px;width:440px;text-align:center;}
	#productthumbs a {margin:0px 10px 10px 0px;}
		#images #productthumbs a img {width:auto;}
		#images #productthumbs a:hover img {border-color:#fff;}
	#images .sale {position:absolute;top:20px;right:40px;padding:5px;line-height:normal;text-align:right;color:#fff;background:#ffffff;font-family: 'Terminal Dosis', "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, sans-serif;text-transform:uppercase;-webkit-animation: delay 1.5s;-moz-animation: delay 1.5s;}
	#items a {display:block;text-decoration:none;}
</style>
 <div class="container" style=" margin-top:10px" >
     <div class="row " style="border:2px solid red; margin-bottom: 10px;background-color: #671979">
 	<div class="col-lg-12">
    	<div class="col-lg-6 ">
        	
           	<a href="#"><img src="<%=rs13.getString("pimageurl")%>" class="img-responsive img-thumbnail img-hover center-block" style="height:400px; margin-top:25px; "/></a>
        <p class="text-center" style="margin:10px; font-size:18px;color:white;">Rollover to zoom. Click to enlarge.</p>
        
        <div class="col-lg-12" style="padding:5px;">
        	<div class="col-lg-4 img-thumbnail text-center img-hover"  style="padding:5px;"  >
            <a href="#"><img src="<%=rs13.getString("pimageurl")%>" class="center-block img-responsive" style="width:130px;"/></a>
            </div>
            <div class="col-lg-4 img-thumbnail " style="padding:5px;">
            <a href="#"><img src="<%=rs13.getString("pimageurl")%>" class="center-block img-responsive"   style="width:130px;" /></a>
            </div>
            <div class="col-lg-4 img-thumbnail " style="padding:5px;"   >
            <a href="#"><img src="<%=rs13.getString("pimageurl")%>" class="center-block img-responsive"   style="width:130px;" /></a>
            </div>
        </div>

    	</div>
      <div class="col-lg-6" style=" border:1px solid red;margin-top: 50px">
      <article id="mainview">

<div id="description">
    <center> <h1 style=" color:red" ><%=rs13.getString("pname")%></h1></center> 
        <h3> <div style=" display:block"><br><span style=" color:white">Availabilty:</span>&nbsp;<span style=" color:red"><%=rs13.getInt("pquantity")%> in Stock</span></div>
            <div   style="display:block;"><br><span style=" color:white">Price After 10% Discount:</span><span style=" color:red">&nbsp<%=price1 %></span> <br><br><span style=" color:white">Actual Price:</span><span style=" color:red"> <%=rs13.getString("price") %></span>       
            </div></strong></h3><h2><p style=" color:white"><%=rs13.getString("pmodel")%></p></h2>
       
        <p class="text-center"><a href="AddCart?pid=<%=rs13.getInt("pid")%>"<button type="submit" class="btn btn-success">Add To Cart &nbsp <i ></i></button></a></p>
       
        
    </div>
    
    </article>
      </div>
    	

    	</div>
    </div>
</div>
  
 <%} %>