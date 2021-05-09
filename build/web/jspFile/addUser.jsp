<%-- 
    Document   : addUser
    Created on : 5 Apr, 2018, 8:04:46 PM
    Author     : Shobhit Jaiswal
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean class="beans.AddUserBean" id="obj"></jsp:useBean>
        <jsp:setProperty property="*" name="obj"></jsp:setProperty>
        <jsp:useBean class="dao.AddUserDao" id="daoObj"></jsp:useBean> 
        <%
            SimpleDateFormat frm=new SimpleDateFormat("yyyy-M-dd");
	Date d=new Date();
	String date=frm.format(d);
        obj.setDate(date);
           String msg= daoObj.save(obj);
            if(msg.equals("success"))
                response.sendRedirect("../admin/dashboard.jsp?log1=fail");
            //out.print("<script>alert('@registration success@')</script>");
            else
            out.print("<script>alert('@registration not success@')</script>");
            %>
    </body>
</html>
