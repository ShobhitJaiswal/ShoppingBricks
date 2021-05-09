<%-- 
    Document   : addPost
    Created on : 6 Apr, 2018, 1:31:02 PM
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
        <jsp:useBean class="beans.AddPostBean" id="obj"></jsp:useBean>
        <jsp:setProperty property="*" name="obj"></jsp:setProperty>
        <jsp:useBean class="dao.AddPostDao" id="daoObj"></jsp:useBean> 
        <%
        
//           System.out.println(obj.getPcid());
//           System.out.println(obj.getPosttitle());
//           System.out.println(obj.getPcname());
//           System.out.println(obj.getDate());
        String msg= daoObj.save(obj);
            if(msg.equals("success"))
                response.sendRedirect("../admin/dashboard.jsp?log2=success");
            //out.print("<script>alert('@registration success@')</script>");
            else
            out.print("<script>alert('@ not Add')</script>");
            %>
    </body>
</html>
