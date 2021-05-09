<%-- 
    Document   : productUpdate
    Created on : 10 Apr, 2018, 1:02:32 PM
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
        <jsp:useBean class="beans.ProductUpdateBean" id="obj"></jsp:useBean>
        <jsp:setProperty property="*" name="obj"></jsp:setProperty>
        <jsp:useBean class="dao.ProductUpdateDao" id="daoObj"></jsp:useBean> 
        <%
            

           String msg= daoObj.update(obj);
            if(msg.equals("success"))
                response.sendRedirect("../admin/CatInfoTable.jsp?log3=fail");
            
            else
            out.print("<script>alert('@ not Add')</script>");
            %>
    </body>
    </body>
</html>
