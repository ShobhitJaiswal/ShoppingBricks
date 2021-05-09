<%-- 
    Document   : last1
    Created on : Apr 30, 2018, 10:41:06 AM
    Author     : Shobhit Jaiswal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
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
        
        <div class="container-fluid top_bar ">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4  pull-left"><p>One of the emerging shopping sites...</p></div>
                    <div class="col-lg-8 text-right"><p>Download app <a href="#" class="fa fa-android"></a><a href="#" class="fa fa-apple"></a><a href="#" class="fa fa-windows"></a></p>
                    </div>
            </div>
        </div>
        </div>
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header col-sm-3">
        <div><a class="navbar-left navbar-header" href="#"><img src="images/logo11.png" class="img-responsive" width="350" height="350" alt="#"/></a>
        </div></div>
    <div class="col-sm-5" id="myNavbar">
        <div class="navbar-form navbar-left">
            <input type="text" id="search1" class="col-sm-3 pull-left text-primary"   style="width: 480px"  placeholder=" Search Products & Brands">
            <button type="submit" id="search2" style="width: 150px"  class="btn btn-block">
                <span class="fa fa-search"> </span>Search</button></div><div>   
                </div></div>
        <div class="col-sm-4">
            
         <ul class="nav navbar-nav navbar-right col-sm-6 ">
             <li class="dropdown-toggle"> <a href="#" data-toggle="dropdown"><span style="color: #ffffff">Login & Signup</span></a>
                 <ul class="dropdown-menu" id="drop">
                     <li><a href="#"><span class="fa fa-user" style="color: #e6e6e6;">&nbsp;<b>Your account</b></span></a></li>
                     <li><a href="#"><span class="fa fa-file-o" style="color: #e6e6e6;">&nbsp;<b>Your orders</b></span></a></li>
                     <li><a href="#"><span class="fa fa-heart-o" style="color:#e6e6e6;">&nbsp;<b>shortlist</b></span></a></li>
      <li class="divider"></li>
      <li><small>&emsp;if you are a new user</small></li>
      <li> <a href="#" data-toggle="modal" data-target="#myModal" onClick="$('#loginbox').hide(); $('#signupbox').show(); $('#forpass').hide()"><span style="color: #e6e6e6"><b>&emsp;&ensp;Register</b></span></a></li>  
      <li class="btn btn-success center-block" style="background-color: #DC143C" data-toggle="modal" data-target="#myModal" onClick="$('#loginbox').show(); $('#signupbox').hide();$('#forpass').hide()"><b>Login</b></li>
                     </ul>
  </li>
             <li class="pull-left"><a href="#"><span style="color: #ffffff" class="fa fa-shopping-cart">(0)</span></a></li>
            
                    </ul>
            <!-- Trigger the modal with a link -->
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
      <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
            <div id="loginbox" style="margin-top:50px; ">                    
            <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">Sign In</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#" data-toggle="modal" data-target="#forpass" >Forgot password?</a></div>
                    </div> </div>  

        <div class="modal-body">
            <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="loginform" class="form-horizontal" role="form">
                                    
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user" style="color: #000"></i></span>
                                <input id="login-username" type="text" class="form-control" name="username" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"  placeholder="username or email" required>                                        
                                    </div>
                                
                            <div style="margin-bottom: 25px" class="input-group col-md-12">
                                         <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input id="login-password" type="password" class="form-control"   name="password" placeholder="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" data-toggle="password" required>
                                                                    </div>
                            

                                        <script>
                             $("#login-password").password('toggle');               
                             
                              </script>   <br>
                              

                                    
                                    

                                
                            <div class="input-group">
                                      <div class="checkbox">
                                        <label>
                                            <input id="login-remember" type="checkbox" checked="checked" name="remember" value="1"> Remember me
                                        </label>
                                      </div>
                                    </div>


                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                    <div class="col-sm-12 controls">
                                        <button class="btn btn-success" type="submit">&nbsp;Login</button>
                                        <button  class="btn btn-primary" type="button">Login with Facebook</button>

                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                            Don't have an account! 
                                        <a href="#" onClick="$('#loginbox').hide(); $('#signupbox').show();$('#forpass').hide()">
                                            Sign Up Here
                                        </a>
                                        </div>
                                    </div>
                                </div>    
                            </form>     
                        </div>                             
        </div>
            </div>
          <!--Signup modal -->
        <div id="signupbox" style="display:none; margin-top:50px">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Sign Up</div>
                            <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="#" onclick="$('#signupbox').hide(); $('#loginbox').show();$('#forpass').hide()">Sign In</a>
                            </div>
                        </div>  
                        <div class="panel-body">
                            <form id="signupform" class="form-horizontal" role="form" method="post" action="register.jsp">
                                
                                <div id="signupalert" style="display:none" class="alert alert-danger">
                                    <p>Error:</p>
                                    <span></span>
                                </div>
                                    
                                
                                  
                                <div class="form-group">
                                    <label for="email" class="col-md-3 control-label">Email</label>
                                    <div class="col-md-9">
                                        <input type="email" class="form-control" name="email" placeholder="Email Address" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required>
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">First Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="firstname" placeholder="First Name" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="lastname" class="col-md-3 control-label">Last Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="lastname" placeholder="Last Name" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="col-md-3 control-label">Password</label>
                                    <div class="col-md-9">
                                        <input type="password" class="form-control" name="password" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" data-toggle="password" required>
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="icode" class="col-md-3 control-label">Mobile No.</label>
                                    <div class="col-md-9">
                                        <input type="tel" class="form-control" name="number" placeholder="Mobile" pattern=".{10}"  required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <!-- Button -->                                        
                                    <div class="col-md-offset-3 col-md-9">
                                        <button id="btn-signup" type="submit" class="btn btn-info"><i class="icon-hand-right"></i> &nbsp Sign Up</button>
                                        <span style="margin-left:8px;">or</span>  
                                    </div>
                                </div>
                                
                                <div style="border-top: 1px solid #999; padding-top:20px"  class="form-group">
                                    
                                    <div class="col-md-offset-3 col-md-9">
                                        <button id="btn-fbsignup" type="submit" class="btn btn-primary"><i class="icon-facebook"></i>   Sign Up with Facebook</button>
                                    </div>                                           
                                        
                                </div>
                                
                                
                                
                            </form>
                        </div>
                         </div>
                    </div></div></div></div></div>
          
  
  <!-- Modal -->
  <div class="modal fade" id="forpass" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <div id="formpass" style="display:none; margin-top:50px">
                     </div>
                        
        <div class="modal-body">
            <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Password Recovery</div> </div> </div>
          <div class="panel-body">
                            <form id="formpass1" class="form-horizontal" role="form" method="post" >
            <div class="form-group">
                <div class="input-group">
                <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                <input name="email" id="email" type="email" class="form-control input-lg" placeholder="Enter Email" required data-parsley-type="email">
                <link href="css/product.css" rel="stylesheet" type="text/css"/>
                </div>                     
            </div>         
            <button type="submit" class="btn btn-success btn-block btn-lg">
              <span class="glyphicon glyphicon-send"></span> SUBMIT
            </button></form></div></div>
        </div>
        
      </div>
      
  </div></div>
        
         <!--End of modal -->
       
        </div>
  </div>
      <div class="container-fluid" >       
        <div class="row" style="width:101.599">
            <div class="container-fluid menu_bar">
                <div class="row container-fluid">
                    gg</div>
            </div></div>
  
            <div class="container-fluid" style="padding:0px 0px 0px 0px">
                <div class="row"><div id="myCarousel" class="carousel slide" data-ride="carousel" style="height: 300px">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
      </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="images/slider-imgs/IMG01.jpg" style="width:100%;height:300px" class="img-responsive" alt=""/>
      </div>

    <div class="item">
        <img src="images/slider-imgs/IMG02.jpg" style="width:100%;height:300px" class="img-responsive"  alt=""/>
      </div>

    <div class="item">
        <img src="images/slider-imgs/IMG03.jpg" style="width:100%;height:300px"   alt=""/>
      </div>
      <div class="item">
        <img src="images/slider-imgs/IMG04.jpg" style="width:100%;height:300px"  class="img-responsive" alt=""/>
      </div>
    </div>


  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
                </div></div>
            <br> <br><br><br>
            <div class="container-fluid">
      	<div class="row">    
        <div class="col-lg-3 col-md-3">
        <div class="pbox">
            <center><a class="aimg" href="moreinfo.jsp?pid=72"><img src="images/sony laptops/sony1.jpg" style=" width:180px;  border-radius:2px;" alt="Elegant evening Dress"/></a></center>
            <a class="title" style="color:#007CCB; margin-top:5px;" href="moreinfo.jsp?pid=72"> Sony NP300E4V-A01IN Laptop </a>           
            <div style="color:green; display:block">Availabilty:&nbsp;1 in Stock</div>
            <div  style="display:block; font-size:14px; font-weight:500;"><span class="reduce fa fa-inr">&nbsp33000</span> <span class="price fa fa-inr"> 30000</span>       
            </div>
            <a href="AddCart1?pid=72"> <button class="btn btn-primary" style="margin-top:10px;"><i class="fa fa-cart-plus">&nbsp Add To Cart </i> </button> </a>
            
            
            
            
            </div>
      </div>
      
   
  

        <div class="col-lg-3 col-md-3">
        <div class="pbox">
            <center><a class="aimg" href="moreinfo.jsp?pid=73"><img src="images/sony laptops/sony2.jpg" style=" width:180px;  border-radius:2px;" alt="Elegant evening Dress"/></a></center>
            <a class="title" style="color:#007CCB; margin-top:5px;" href="moreinfo.jsp?pid=73">  Sony NP300 Laptop </a>           
            <div style="color:green; display:block">Availabilty:&nbsp;1 in Stock</div>
            <div  style="display:block; font-size:14px; font-weight:500;"><span class="reduce fa fa-inr">&nbsp43780</span> <span class="price fa fa-inr"> 39800</span>       
            </div>
            <a href="AddCart1?pid=73"> <button class="btn btn-primary" style="margin-top:10px;"><i class="fa fa-cart-plus">&nbsp Add To Cart </i> </button> </a>
           
            
            
            
            
            </div>
      </div>
      
   
  

        <div class="col-lg-3 col-md-3">
        <div class="pbox">
            <center><a class="aimg" href="moreinfo.jsp?pid=74"><img src="images/sony laptops/sony3.jpg" style=" width:180px;  border-radius:2px;" alt="Elegant evening Dress"/></a></center>
            <a class="title" style="color:#007CCB; margin-top:5px;" href="moreinfo.jsp?pid=74">  Sony NP301E4V-A01IN Laptop</a>           
            <div style="color:green; display:block">Availabilty:&nbsp;1 in Stock</div>
            <div  style="display:block; font-size:14px; font-weight:500;"><span class="reduce fa fa-inr">&nbsp32890</span> <span class="price fa fa-inr"> 29900</span>       
            </div>
            <a href="AddCart1?pid=74"> <button class="btn btn-primary" style="margin-top:10px;"><i class="fa fa-cart-plus">&nbsp Add To Cart </i> </button> </a>
           
            
            
            
            
            </div>
      </div>
      
   
  

        <div class="col-lg-3 col-md-3">
        <div class="pbox">
            <center><a class="aimg" href="moreinfo.jsp?pid=75"><img src="images/sony laptops/sony4.jpg" style=" width:180px;  border-radius:2px;" alt="Elegant evening Dress"/></a></center>
            <a class="title" style="color:#007CCB; margin-top:5px;" href="moreinfo.jsp?pid=75">  Sony  NP550P5C-S05IN Laptop</a>           
            <div style="color:green; display:block">Availabilty:&nbsp;1 in Stock</div>
            <div  style="display:block; font-size:14px; font-weight:500;"><span class="reduce fa fa-inr">&nbsp46200</span> <span class="price fa fa-inr"> 42000</span>       
            </div>
            <a href="AddCart1?pid=75"> <button class="btn btn-primary" style="margin-top:10px;"><i class="fa fa-cart-plus">&nbsp Add To Cart </i> </button> </a>
           
            
            
            
            
            </div>
      </div>
      
   
  
 
 </div>
 
 	<div class="row">
    
 

        <div class="col-lg-3 col-md-3">
        <div class="pbox">
            <center><a class="aimg" href="moreinfo.jsp?pid=108"><img src="images/canon/canon1.jpg" style=" width:180px;  border-radius:2px;" alt="Elegant evening Dress"/></a></center>
            <a class="title" style="color:#007CCB; margin-top:5px;" href="moreinfo.jsp?pid=108">Canon NP300E4V-A01IN Camera </a>           
            <div style="color:green; display:block">Availabilty:&nbsp;1 in Stock</div>
            <div  style="display:block; font-size:14px; font-weight:500;"><span class="reduce fa fa-inr">&nbsp9790</span> <span class="price fa fa-inr"> 8900</span>       
            </div>
            <a href="AddCart1?pid=108"> <button class="btn btn-primary" style="margin-top:10px; width: 120px;"><i class="fa fa-cart-plus">&nbsp Add To Cart </i> </button> </a>
           
            
            
            
            
            </div>
      </div>
      
   
  

        <div class="col-lg-3 col-md-3">
        <div class="pbox">
            <center><a class="aimg" href="moreinfo.jsp?pid=109"><img src="images/canon/canon2.jpg" style=" width:180px;  border-radius:2px;" alt="Elegant evening Dress"/></a></center>
            <a class="title" style="color:#007CCB; margin-top:5px;" href="moreinfo.jsp?pid=109">Canon NP300E5X-S01IN Camera </a>           
            <div style="color:green; display:block">Availabilty:&nbsp;1 in Stock</div>
            <div  style="display:block; font-size:14px; font-weight:500;"><span class="reduce fa fa-inr">&nbsp10780</span> <span class="price fa fa-inr"> 9800</span>       
            </div>
            <a href="AddCart1?pid=109"> <button class="btn btn-primary" style="margin-top:10px;"><i class="fa fa-cart-plus">&nbsp Add To Cart </i> </button> </a>
           
            
            
            
            
            </div>
      </div>
      
   
  

        <div class="col-lg-3 col-md-3">
        <div class="pbox">
            <center><a class="aimg" href="moreinfo.jsp?pid=110"><img src="images/canon/canon3.jpg" style=" width:180px;  border-radius:2px;" alt="Elegant evening Dress"/></a></center>
            <a class="title" style="color:#007CCB; margin-top:5px;" href="moreinfo.jsp?pid=110">Canon CyberShot 23SS Camera</a>           
            <div style="color:green; display:block">Availabilty:&nbsp;1 in Stock</div>
            <div  style="display:block; font-size:14px; font-weight:500;"><span class="reduce fa fa-inr">&nbsp20790</span> <span class="price fa fa-inr"> 18900</span>       
            </div>
            <a href="AddCart1?pid=110"> <button class="btn btn-primary" style="margin-top:10px;"><i class="fa fa-cart-plus">&nbsp Add To Cart </i> </button> </a>
           
            
            
            
            
            </div>
      </div>
      
   
  

        <div class="col-lg-3 col-md-3">
        <div class="pbox">
            <center><a class="aimg" href="moreinfo.jsp?pid=111"><img src="images/canon/canon4.jpg" style=" width:180px;  border-radius:2px;" alt="Elegant evening Dress"/></a></center>
            <a class="title" style="color:#007CCB; margin-top:5px;" href="moreinfo.jsp?pid=111">Canon CyberShot 230S Camera </a>           
            <div style="color:green; display:block">Availabilty:&nbsp;1 in Stock</div>
            <div  style="display:block; font-size:14px; font-weight:500;"><span class="reduce fa fa-inr">&nbsp22000</span> <span class="price fa fa-inr"> 20000</span>       
            </div>
            <a href="AddCart1?pid=111"> <button class="btn btn-primary" style="margin-top:10px;"><i class="fa fa-cart-plus">&nbsp Add To Cart </i> </button> </a>
           
            
            
            
            
            </div>
      </div>
      
   
  
 
 </div>
 
 	<div class="row">
    
 

        <div class="col-lg-3 col-md-3">
        <div class="pbox">
            <center><a class="aimg" href="moreinfo.jsp?pid=36"><img src="images/apple/apple1.jpg" style=" width:180px;  border-radius:2px;" alt="Elegant evening Dress"/></a></center>
            <a class="title" style="color:#007CCB; margin-top:5px;" href="moreinfo.jsp?pid=36">Apple IPhone 521</a>           
            <div style="color:green; display:block">Availabilty:&nbsp;1 in Stock</div>
            <div  style="display:block; font-size:14px; font-weight:500;"><span class="reduce fa fa-inr">&nbsp23100</span> <span class="price fa fa-inr"> 21000</span>       
            </div>
            <a href="AddCart1?pid=36"> <button class="btn btn-primary" style="margin-top:10px;"><i class="fa fa-cart-plus">&nbsp Add To Cart </i> </button> </a>
           
            
            
            
            
            </div>
      </div>
      
   
  

        <div class="col-lg-3 col-md-3">
        <div class="pbox">
            <center><a class="aimg" href="moreinfo.jsp?pid=37"><img src="images/apple/apple2.jpg" style=" width:180px;  border-radius:2px;" alt="Elegant evening Dress"/></a></center>
            <a class="title" style="color:#007CCB; margin-top:5px;" href="moreinfo.jsp?pid=37">Apple IPhone 920</a>           
            <div style="color:green; display:block">Availabilty:&nbsp;1 in Stock</div>
            <div  style="display:block; font-size:14px; font-weight:500;"><span class="reduce fa fa-inr">&nbsp31680</span> <span class="price fa fa-inr"> 28800</span>       
            </div>
            <a href="AddCart1?pid=37"> <button class="btn btn-primary" style="margin-top:10px;"><i class="fa fa-cart-plus">&nbsp Add To Cart </i> </button> </a>
           
            
            
            
            
            </div>
      </div>
      
   
  

        <div class="col-lg-3 col-md-3">
        <div class="pbox">
            <center><a class="aimg" href="moreinfo.jsp?pid=38"><img src="images/apple/apple3.jpg" style=" width:180px;  border-radius:2px;" alt="Elegant evening Dress"/></a></center>
            <a class="title" style="color:#007CCB; margin-top:5px;" href="moreinfo.jsp?pid=38">Apple iPhone</a>           
            <div style="color:green; display:block">Availabilty:&nbsp;1 in Stock</div>
            <div  style="display:block; font-size:14px; font-weight:500;"><span class="reduce fa fa-inr">&nbsp2200</span> <span class="price fa fa-inr"> 2000</span>       
            </div>
            <a href="AddCart1?pid=38"> <button class="btn btn-primary" style="margin-top:10px;"><i class="fa fa-cart-plus">&nbsp Add To Cart </i> </button> </a>
           
            
            
            
            
            </div>
      </div>
      
   
  

        <div class="col-lg-3 col-md-3">
        <div class="pbox">
            <center><a class="aimg" href="moreinfo.jsp?pid=39"><img src="images/apple/apple4.jpg" style=" width:180px;  border-radius:2px;" alt="Elegant evening Dress"/></a></center>
            <a class="title" style="color:#007CCB; margin-top:5px;" href="moreinfo.jsp?pid=39">Apple X2</a>           
            <div style="color:green; display:block">Availabilty:&nbsp;1 in Stock</div>
            <div  style="display:block; font-size:14px; font-weight:500;"><span class="reduce fa fa-inr">&nbsp24200</span> <span class="price fa fa-inr"> 22000</span>       
            </div>
            <a href="AddCart1?pid=39"> <button class="btn btn-primary" style="margin-top:10px;"><i class="fa fa-cart-plus">&nbsp Add To Cart </i> </button> </a>
           
            
            
            
        </div>
            </div>
      </div>
      
   
  
 
 
 
 
   
         

        
       
            </div></div>  
        
  
        
        <%--End of carousel --%>
              
             </nav>
        
      
 
        
        
   
        
        
       
          </body>
</html>
