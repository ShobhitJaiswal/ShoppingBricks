<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*"  %>
<%@page import="connect.ConnectionProvider" %>

<!doctype html><head>
<title>Invoice</title>
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
<html>
    <body>
<%@include file="header2.jsp"%>

<%
ArrayList itemlist = (ArrayList) session.getAttribute("cartID");  
	   Connection connection=ConnectionProvider.getCon(); 
	   Statement stmt=connection.createStatement(); 
	//  out.print("connection::::"+connection); 
	  int price=0;
	    String pdesc=null;
         String img=null;




String orderid=request.getParameter("orderid");
 	
				
				//javax.servlet.http.HttpSession session=request.getSession(false);


String emailid=(String)session.getAttribute("emailid");
String address=(String)session.getAttribute("address");
String ship_address=(String)session.getAttribute("ship_address");
String landmark=(String)session.getAttribute("landmark");
String city=(String)session.getAttribute("city");
String areacode=(String)session.getAttribute("areacode");
String state=(String)session.getAttribute("state");
		  %>
          </br>
         <div class="row">       
                <div class="col-lg-2"></div>
                <div class="col-lg-9">
                 
 
<div class="container">
	<div class="row">
<div class="col-lg-10">
<form action="payment_msg.jsp">
	<table class="table table-bordered table-hover" style="color:black; font-size:14px; background:#61C1E4;;">
    
    <tr><th colspan="5">Your Order Id Is.....=<%=orderid%></th></tr>
   <tr>
    <th width="100">Product</th>
    <th width="400px">Discription</th>
    <th width="100">Quantity</th>
    <th width="100">Price</th>
    <th width="100">Total</th>
    
    </tr>
    <tr>

<%
				
  

				if(itemlist != null){
				 rs=null;
				//Integer pid[]=new Integer[itemlist.size()];
					for(int i=0 ; i< itemlist.size();i++){
						
						//pid[i]=(Integer)itemlist.get(i);<%=itemlist.get(i) 
						rs=stmt.executeQuery("select * from product where pid="+itemlist.get(i));
						while(rs.next())
						{
						//out.print(rs.getInt(1) +".."+rs.getString(5));
						
						price=price+rs.getInt("price");
						pdesc=rs.getString("pmodel");
						img=rs.getString("pimageurl");

 
						%>
                                                <th width="100"><img src=<%=img%> alt="Product" style="width:80px;height: 100px"/></th>
    <th width="400px"><%=pdesc%></th>
    <th width="100"><%=rs.getInt("pquantity")%></th>
    <th width="100">Rs.&nbsp <%=rs.getInt("price")%></th>
    <th width="100">Rs.&nbsp  <%=rs.getInt("price")%></th>
    </tr>

						 
						 <%	
						}				
						}%>





    <tr>
    <th colspan="3">Total Quntity</th>
    <th colspan="2">&nbsp <%=itemlist.size() %></th>
    
    </tr>

    <tr>
    <th colspan="3">Total Price</th>
    <th colspan="2">Rs.&nbsp <%=price %></th>
    
    </tr>
    <tr>
    <th colspan="3">Shipping Charge</th>
    <th colspan="2">Rs.&nbsp 50.00</th>
    
    </tr>
    <tr>
    <th colspan="3">Amount Payable</th>
    <th colspan="2">Rs.&nbsp <%=price+50 %></th>
    
    </tr>
    
    
    
    </table>
     
	 
						<%
				}
				
				 %>
    
    
</div>
</div>
</div> 
 
                
  <table class="table table-hover " style="color:black; border:2px solid #1296DF;" cellspacing="0" cols="0">  
  
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
 
   </table>
  
   <button class="btn btn-danger pull-left">Finish Shopping>></button>
   
    </form>
   </div>
         </div>           
			
                
</body>
<%@include file="footer.jsp"%> 
</html>
				 
		 