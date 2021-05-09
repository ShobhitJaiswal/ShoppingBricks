<!doctype html>
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
  <%@include file="header2.jsp"%>
  
  

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Connection"%>
<%@page import="connect.ConnectionProvider"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
 
	<%! 
	  
	  //out.print("connection::::"+connection);
	   
	%>
    
    
    <br/>
    
    <div class="container">
	<div class="row" >
    <div class="col-lg-9">
    <div class="table-responsive" style="color:black;">
  	<table class=" table table-bordered table-hover">
    <tr  style="color:#525252; background-color:#C9C9C9; font-family:Roboto; font-style:inherit; font-variant:normal; font-size:18px;">
            <td class="text-center">Product</td>
            <td class="text-center" style="width:400px;">Discription</td>
            <td class="text-center" style="width:50px;">Product Model</td>
            <td class="text-center"style="width:50px; ">Price</td>
            <td class="text-center" >Quantity</td>
            <td class="text-center" ></td>
  		<%
                     ArrayList itemlist = (ArrayList) session.getAttribute("cartID"); 
	   Connection connection=ConnectionProvider.getCon();
	   Statement stmt=connection.createStatement();
	   int price=0;
				
				if(itemlist == null)
				{
					out.println("<h1>Have No cart!</h1>");
				}
				else{
                                    
				int a=0;
				//Integer pid[]=new Integer[itemlist.size()];
					for(int i=0 ; i< itemlist.size();i++)
                                        {
						
						//pid[i]=(Integer)itemlist.get(i);<%=itemlist.get(i) 
						rs=stmt.executeQuery("select * from product where pid="+itemlist.get(i));
						while(rs.next())
						{
                                                    a++;
						//out.print(rs.getInt(1) +".."+rs.getString(5));
						price=price+rs.getInt("price");
						%>
            
            </tr>
            <tr style="font-size:16px; ">
             <td><img src="<%=rs.getString("pimageurl")%>" alt="<%=rs.getString("pmodel")%>" height="92" width="80" ></td>
                               <td><%=rs.getString("pmodel")%></td>
                               <td class="text-center"><%=rs.getString("pmodel")%></td>
                               <td class="text-center"><%=rs.getInt("price")%></td>
                               <td class="text-right"><%=1%></td>
                               <td class="text-center" onclick="window.location.href='DeleteCart?pid=<%=rs.getInt("pid") %>';" style="cursor:pointer;"><i class="fa fa-trash"> </i></td>
                               
            </tr>

             <%	
						}				
						}%>
                        
            <tr class="text-right">
            <td colspan="4">
          <h3 class="text-primary">  Amount Payable (<%=a%> Items Selected)</h3></td>
          <td colspan="2"> <h3 class="text-primary "> Rs.&nbsp  <%=price%> </h3>
          </td>
            </tr>
           <tr>
           <td colspan="6"> <button class="btn btn-danger pull-left" value="Submit" onClick="window.location.href='index.jsp';"> Continue Shopping</button>
							 <button class="btn btn-primary pull-right" value="Submit" onClick="window.location.href='checkOut.jsp';"> Process to Check</button></td>
           </tr>
           <%
				}
				
				 %>
                      </table>		
             </div>	
        
        </div>
				 
				 
				 
			</div>
           </div>
		 
</div>
     

                
                
 <%@include file="footer.jsp"%>
  </body>
</html>