<%-- 
    Document   : productAdd
    Created on : 2 Apr, 2018, 11:50:13 AM
    Author     : Shobhit Jaiswal
--%>
<%@page import="dao.ProductAddDao"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="beans.ProductAddBean"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.util.Base64"%>

<%@page import="java.io.File"%>
<%@page import="java.nio.file.Files"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
          
        try
{
	  String path="C:\\Users\\shravan\\Documents\\NetBeansProjects\\shopcool\\web\\images\\";
	MultipartRequest mpr=new MultipartRequest(request,path,90*1024*1024);
	String p_image=mpr.getOriginalFileName("pimage");
	
	
	 SimpleDateFormat frm=new SimpleDateFormat("yyyy-M-dd");
	Date d=new Date();
	String date=frm.format(d);
	
	ProductAddBean a=new ProductAddBean();
      //  int pcid,pid,pcompid,pprice,pquantity;
    //String pcatname,pscatname,pimage,pname,pcompname,pmodel,editor1,date;  
	
        a.setPid(Integer.parseInt(mpr.getParameter("pid")));
        a.setPcompid(Integer.parseInt(mpr.getParameter("pcompid")));
        a.setPprice(Integer.parseInt(mpr.getParameter("pprice")));
        a.setPquantity(Integer.parseInt(mpr.getParameter("pquantity")));
	a.setPimage("images/"+p_image);
        a.setPosttitle(mpr.getParameter("posttitle"));
	a.setPname(mpr.getParameter("pname"));
        a.setPcatname(mpr.getParameter("pcatname"));
        a.setPscatname(mpr.getParameter("pscatname"));
        a.setPcompname(mpr.getParameter("pcompname"));
        a.setPmodel(mpr.getParameter("pmodel"));
        a.setEditor1(mpr.getParameter("editor1"));
        a.setDate(date);
        ProductAddDao productadd=new ProductAddDao();
        String msg= productadd.save(a);
        if(msg.equals("success"))
                response.sendRedirect("../admin/category.jsp?log4=fail");
            //out.print("<script>alert('@registration success@')</script>");
            else
            out.print("<script>alert('@ not Add')</script>");
	
}
catch(Exception e)
{
	out.println(e);
}

           
            %>
               
 