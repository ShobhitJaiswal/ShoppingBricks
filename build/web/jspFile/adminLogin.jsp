<%-- 
    Document   : adminLogin
    Created on : 29 Mar, 2018, 5:11:51 PM
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
        <jsp:useBean class="dao.AdminLoginDao" id="daoObj"></jsp:useBean> 
        <%
           String msg= daoObj.save(lobj);
            if(msg.equals("success"))
            {
                session.setAttribute("name",msg);
          response.sendRedirect("../admin/dashboard.jsp");
            }
            else  {
                 response.sendRedirect("../admin/sk_admin.jsp?log2=fail");
            
            
            }
            
            %>
    </body>
</html>
