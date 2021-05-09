<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Contacts</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
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
 <%@include file="header.jsp" %>
 <div class="row ">
     <div class="col-lg-3"></div>
     <div class="col-lg-6 text-center" style="border: 1px solid red;margin-top:5%;margin-bottom:5% ">
<div id="main_container">
 
    <!-- end of left content -->
    <div class="center_content">
        <div class="center_title_bar text-center"><h3>Contact Us</h3></div>
     
      <div class="prod_box_big">
        <div class="top_prod_box_big"></div>
        <div class="center_prod_box_big">
          <div class="contact_form text-center">
          <form action="ContactUs" method="get"  name="contactus" onsubmit="return check()">
            <div class="form_row">
              <label class="contact"><strong>Name:</strong></label>
              <input type="text" class="contact_input"  name="name" onchange="return check()"/>
            </div>
            <div class="form_row">
              <label class="contact"><strong>Email:</strong></label>
              <input type="text" class="contact_input" name="email" onchange="return check()" />
            </div>
            <div class="form_row">
              <label class="contact"><strong>Phone:</strong></label>
              <input type="text" class="contact_input" name="phone" onchange="return check()"/>
            </div>
            <div class="form_row">
              <label class="contact"><strong>Company:</strong></label>
              <input type="text" class="contact_input" name="company"/ onchange="return check()">
            </div>
            <div class="form_row" >
              <label class="contact"><strong>Message:</strong></label>
             <div style="margin-left: 78px;"> <textarea   class="contact_textarea" name="message" onchange="return check()"></textarea></div>
            </div>
            <div class="form_row"> <input type="submit" value="send details" /> </div>
            </form>
          </div>
        </div>
        <div class="bottom_prod_box_big"></div>
      </div>
    </div>
    <!-- end of center content -->
   
</div>
             </div>
      <div class="col-lg-3"></div>
</div>
<!-- end of main_container -->
 <%@include file="footer.jsp" %>
</body>
</html>
