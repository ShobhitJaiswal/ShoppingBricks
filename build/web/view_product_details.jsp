<%@page import="java.sql.Connection"%>
<%@page import="connect.ConnectionProvider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.ArrayList"%>
<%! int i=1,pid1[]=new int[12]; %>
 
<html>
    <head
</head>
<body>
<div class="container">
	<div class="row text-center">
            <div class="col-lg-2"></div>
 <%

 Connection connection=ConnectionProvider.getCon();
ResultSet rs11=null;
int price=0 ,totalItems=0;
Statement stmt= connection.createStatement();  
int pcid=Integer.parseInt(request.getParameter("pid"));

rs11=stmt.executeQuery("select * from product where pid="+pcid+"");
 
while(rs11.next())
{
	Integer price1=rs11.getInt("price");
	price1=price1+(price1*10)/100;
	Integer pid1=rs11.getInt("pid");
	pid1=pid1+1; 
%>
<div class="col-lg-8">
        <div class=" text-center pbox">
            <center><a class="aimg" href="moreinfo.jsp?pid=<%=(--pid1)%>"><img src="<%=rs11.getString("pimageurl")%>" alt="Elegant evening Dress"/></a></center>
            <a href="moreinfo.jsp?pid=<%=pid1%>" class="title"><%=rs11.getString("pmodel")%></a>           
            <div style="color:green; display:block">Availabilty:&nbsp;<%=rs11.getInt("pquantity")%> in Stock</div>
            <div style="display:block; font-size:14px; font-weight:500;color:red">
                
                <span>Rs.&nbsp<%=rs11.getInt("price") %>   </span>    
            </div>
            <a href="AddCart?pid=<%=rs11.getInt("pid")%>" class="text-right"><button class="btn btn-danger" style="margin-top:2px;">&nbsp Add To Cart </button> </a>
            
            
            
            
            </div>
      </div>
            <div class="col-lg-2"></div>
  <%} %>
 </div>
  </div>
</body>
</html>
