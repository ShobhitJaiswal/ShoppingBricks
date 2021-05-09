<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="connect.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<head>
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
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
 				<%@include file="header2.jsp" %>
                <%
 Connection con=ConnectionProvider.getCon();
String emailid=request.getParameter("email");
		//String pass=request.getParameter("pass");
		String address=request.getParameter("address");
		String ship_address=request.getParameter("ship_address");
		String landmark=request.getParameter("landmark");
		String city=request.getParameter("city");
		String areacode=request.getParameter("areacode");
		String state=request.getParameter("state");
		out.println("<h5><font color='blue'>");	
		session.setAttribute("email",emailid);
		session.setAttribute("address",address);
		session.setAttribute("ship_address",ship_address);
		session.setAttribute("landmark",landmark);
		session.setAttribute("city",city);
		session.setAttribute("areacode",areacode);
		session.setAttribute("state",state);
		
		
		%>
                </br>
                <div class="row">                
                <div class="col-lg-3"></div>
                <div class="col-lg-6">
                
  <table class="table table-hover " style="color:black; border:2px solid #1296DF;">  
  <tr>
  <td class="border_box">Your Email Address</td>
  <td class="border_box"><%=emailid%></td>
  </tr>
  <tr>
  <td class="border_box">Your Address</td>
  <td class="border_box"><%=address%></td>
  </tr>   
  <tr>
  <td class="border_box">Shipping Address</td>
  <td class="border_box"><%=ship_address%></td>
  </tr>  
  <tr>
  <td class="border_box">Landmark</td>
  <td class="border_box"><%=landmark%></td>
  </tr>    
  <tr>
  <td class="border_box">City</td>
  <td class="border_box"><%=city%></td>
  </tr>   
  <tr>
  <td class="border_box">Areacode</td>
  <td class="border_box"><%=areacode%></td>
  </tr> 
  <tr>
  <td class="border_box">State</td>
  <td class="border_box"><%=state%></td>
  </tr> 
 
  <% out.println("<a href='checkOut.jsp'><font color=red>EditAddress</font></a>");
  Statement s=con.createStatement();

	String emailid1=request.getParameter("email");
         PreparedStatement preparedStatement=con.prepareStatement("select userid from address where emailid=?");
         preparedStatement.setString(1, emailid1);
           rs=preparedStatement.executeQuery();
         if(rs.next())
         session.setAttribute("userid",rs.getInt("userid"));
         
  %> 
     
  

</table>
  
<form action="CheckOut" method="post">

<input type="submit" value="Cash On Delivery" class="btn btn-danger">


</form>  
  <form action="CheckOut" method="get" >

<input type="submit" value="Pay Now" class="btn btn-success pull-right"style="margin-top: -5%">

</form>  

                </div></div>

</br>




  
  
			<%@include file="footer.jsp" %>
 </body>
</html>
