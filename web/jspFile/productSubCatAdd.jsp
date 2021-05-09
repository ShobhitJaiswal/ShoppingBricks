<%-- 
    Document   : productSubCatAdd
    Created on : 5 Apr, 2018, 7:39:19 PM
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
        <jsp:useBean class="beans.ProductSubCatAddBean" id="obj"></jsp:useBean>
        <jsp:setProperty property="*" name="obj"></jsp:setProperty>
        <jsp:useBean class="dao.ProductSubCatAddDao" id="daoObj"></jsp:useBean> 
        <%
           String msg= daoObj.save(obj);
            if(msg.equals("success"))
                response.sendRedirect("../admin/category.jsp?log1=Success");
            //out.print("<script>alert('@registration success@')</script>");
            else
            out.print("<script>alert('@ not Add')</script>");
            %>
    </body>
</html>
