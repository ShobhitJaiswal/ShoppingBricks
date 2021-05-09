<%-- 
    Document   : productDelete
    Created on : 11 Apr, 2018, 2:04:52 PM
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
        <jsp:useBean class="beans.ProductDeleteBean" id="obj"></jsp:useBean>
        <jsp:setProperty property="*" name="obj"></jsp:setProperty>
        <jsp:useBean class="dao.ProductDeleteDao" id="daoObj"></jsp:useBean> 
        <%
            

           String msg= daoObj.delete(obj);
            if(msg.equals("success"))
                response.sendRedirect("../admin/CatInfoTable.jsp?log4=success");
            
            else
            out.print("<script>alert('@ not Deleted')</script>");
            %>
    </body>
    </body>
</html>