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
 <br> 
<div class="container">
<div class="row">
<div class="col-lg-3"></div>
 <div class="col-lg-6" style="border: 1px solid red;margin-top:10%;margin-bottom:10% ">
<form action="email_check.jsp" style="margin-top:10%;margin-bottom:10%" >
            <input type="email" name= "email" class="form-control" placeholder="Enter Your EmailID"/>
            <br/>
 
           <button class="btn btn-success center-block">Submit </button>
 
</form>
       </div>
	 

 	</div>
    </div>
      <%@include file="footer.jsp"%> 

 </div>

 </div>
 </div>  