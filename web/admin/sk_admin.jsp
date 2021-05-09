<%-- 
    Document   : sk_admin.jsp
    Created on : 22 Mar, 2018, 2:57:07 PM
    Author     : shravan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Admin</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

<link href="../bootstrap/style.css" rel="stylesheet"/>
<link href="../bootstrap/icon/css/fontawesome-all.css" rel="stylesheet"/>
<link href="../bootstrap/icon/css/fontawesome-all.min.css" rel="stylesheet"/>
<link href="../bootstrap/css/carousel.css" rel="stylesheet" type="text/css"/>
        <script src="../bootstrap/js/bootstrap.js" type="text/javascript"></script>
    <script src="../bootstrap/js/ie-emulation-modes-warning.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
       <style>
            body{
                
                
       width: 100%;
    height: 100px;
    background-image: url('../images/ad.jpeg');
    background-repeat: no-repeat;
    background-size: cover;
   
            }
            .admin_logo{
                width:30%;
                
                
            }
            .login-name{
                
                font-size: 30px;
                font-family: Arabic typeseting;
                color:#FFFFFF;
               
               
            }
            .login_banner{
                
                opacity: 0.90;
                
                
            }
            .login{
                background-color: #0d0d0d;
                min-height: 500px;
                opacity: 0.90;
                padding: 40px 80px 40px 80px;
                
            }
            .user{
                font-size: 29px;
                font-family: Arabic typeseting;
               color: #FFFFFF;
            }
            .input-group-addon{
                background-color: #5cb85c;
                border-color: #4cae4c;
                color: #fff;
            }
            .text1{ border-radius: 0px;
                    height: 40px;
                
            }
            .btn1{
                border-radius: 0px;
                float: left;
                width: 50%;
            }
        </style>
    
    </head>
    <body>
        <%
    String msg2=request.getParameter("log2");
    if(msg2!=null)
     out.print("<script>alert('Login Failed...invalid uname or pass')</script>");
  
    %>
       
        <div class="container">
            <div class="row">
            <br><div class="col-md-6 col-md-offset-3 login_banner" style="background-color:#000">
                <center> <span>
                       
                    <a href="../index.jsp"><img src="../images/logo4.png" class="admin_logo"/></a>
                    <br><b class="login-name"><strong> WELCOME ADMIN</strong></b>
                
                    </span></center>
                    </div>
            </div>
            
            <div class="row" >
                
                <div class="col-md-6 col-md-offset-3 login"  style="background-color:#671979">
                    
                    
                    <form action="../jspFile/adminLogin.jsp" method="post">
                        <div class="form-group" >
                            <label class="user">User Name</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input type="text" name="uname" class="form-control text1" placeholder="user name" required="">
                            </div>   
                        </div>
                        
                        
                        <div class="form-group">
                            <label class="user">Password</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input type="password" name="upass" class="form-control text1" placeholder="password" required="">
                            </div>                          
                        </div>
                        
                        <div class="form-group">
                           <input type="submit" value="LogIn" class="btn btn-success btn1" />
				
			</div>
                        
                        
                        <br><br><br>
                        <a href="#" style="color:#FFFFFF; font-size-adjust:15px; float: right"> Forgotten password ?</a>
                        
                    </form>
                </div>
            </div>
        </div>
        
    </body>
</html>

