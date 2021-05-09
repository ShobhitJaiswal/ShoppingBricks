<!doctype html>
<head>
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
 <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

<link href="bootstrap/style.css" rel="stylesheet"/>
<link href="bootstrap/icon/css/fontawesome-all.css" rel="stylesheet"/>
<link href="bootstrap/icon/css/fontawesome-all.min.css" rel="stylesheet"/>
<link href="bootstrap/css/carousel.css" rel="stylesheet" type="text/css"/>
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/ie-emulation-modes-warning.js" type="text/javascript"></script>
   <script src="bootstrap/js/jquery.min.js" type="text/javascript"></script>
 <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</head>    
<body>
<%@include file="header.jsp"%>
 
 <div id="content">
             <h1> 
                 <br> <font color="green">Search Result</font>
             </h1>
             <%  int r;
                 String query=request.getParameter("query");
                 
                 beans.ProductSearch ms=new beans.ProductSearch();
                 r= ms.getMNameResult(query);
                if (ms.getPname()== null){
					out.print("<font color=green>");
                     out.println("<h3>No result found<h3>");
					 out.print("</font>");
                 }
                 else{
             %>
             
             <h3> <a href="moreinfo.jsp?pid=<%=ms.getPid()%>"><font color="green"><%=ms.getPname()%></font></a></h3>
                 <%} %>
         </div>
  <%@include file="footer.jsp"%>        

    </body>
</html>

    </body>
</html>
