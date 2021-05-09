<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="connect.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>


<% 
try
{

if(session.getAttribute("user1")!=null)
{	
 
 session.getAttribute("user1");
//Integer userid=(Integer)session.getAttribute("userid");
response.sendRedirect("viewCart.jsp");

 }
 else
 {
    
response.sendRedirect("index.jsp?log2=Fail"); 
 }
}
catch(Exception e)
{
out.println(e);
}
%>
                
 