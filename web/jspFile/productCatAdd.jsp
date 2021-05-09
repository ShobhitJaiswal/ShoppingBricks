<%-- 
    Document   : productCatAdd
    Created on : 30 Mar, 2018, 5:47:57 PM
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
        <jsp:useBean class="beans.ProductCatAddBean" id="obj"></jsp:useBean>
        <jsp:setProperty property="*" name="obj"></jsp:setProperty>
        <jsp:useBean class="dao.ProductCatAddDao" id="daoObj"></jsp:useBean> 
        <%
           String msg= daoObj.save(obj);
            if(msg.equals("success"))
                response.sendRedirect("../admin/category.jsp?log3=fail");
            //out.print("<script>alert('@registration success@')</script>");
            else
            out.print("<script>alert('@ not Add')</script>");
            %>
    </body>
</html>
