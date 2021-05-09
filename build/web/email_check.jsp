<jsp:useBean id="emailobj" class="beans.EmailBean" scope="session"/>
<jsp:setProperty name="emailobj" property="*"/>
<%
if(emailobj.check())
response.sendRedirect("email_ok.jsp");
else
response.sendRedirect("email_err.jsp");
%>