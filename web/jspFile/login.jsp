<%-- 
    Document   : login
    Created on : 29 Mar, 2018, 11:55:43 AM
    Author     : Shobhit Jaiswal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <jsp:useBean class="beans.LoginBean" id="lobj"></jsp:useBean>
        <jsp:setProperty property="*" name="lobj"></jsp:setProperty>
        <jsp:useBean class="dao.LoginDao" id="daoObj"></jsp:useBean> 
        <%
            
            
         String msg=daoObj.save(lobj);
           
           String newd[]=msg.split("/");
            
            if(newd[0].equals("success"))
            {
                
                session.setAttribute("user1",newd[0]);
                session.setAttribute("user2",newd[1]);
          response.sendRedirect("../viewCart.jsp");
          
            }
            else  {
                 response.sendRedirect("../index.jsp?log=fail");
            
            
            }
            
            %>
    </body>
</html>
