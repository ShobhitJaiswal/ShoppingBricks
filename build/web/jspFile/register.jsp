<%-- 
    Document   : register
    Created on : 28 Mar, 2018, 12:37:52 PM
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
       
        <jsp:useBean class="beans.RegisterBean" id="obj"></jsp:useBean>
        <jsp:setProperty property="*" name="obj"></jsp:setProperty>
        <jsp:useBean class="dao.RegisterDao" id="daoObj"></jsp:useBean> 
        <%
           String msg= daoObj.save(obj);
            if(msg.equals("success"))
                response.sendRedirect("../index.jsp?log1=fail");
            //out.print("<script>alert('@registration success@')</script>");
            else
            out.print("<script>alert('@registration not success@')</script>");
            %>
    </body>
</html>
