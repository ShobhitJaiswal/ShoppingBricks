<%-- 
    Document   : UserProfile
    Created on : 26 Apr, 2018, 1:59:15 PM
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
                              <div class="row" >
            <div class="col-lg-12">
<!-- Modal -->
               <div id="signup" class="modal fade" role="dialog">
                  <div class="modal-dialog">

    <!-- Modal content-->
                   <div class="modal-content">
                     <div class="modal-header">
                       <button type="button" class="close" data-dismiss="modal">&times;</button>
                         <!---   <h4 class="modal-title"></h4>--->
                     </div>
                   <div class="modal-body">
                        <div class="panel panel-primary">
                            <div class="panel-heading text-left">
                                Welcome to Shravan !!
                            </div>
                         <div class="panel-body">
                                
                             <form action="jspFile/register.jsp" method="post">
                      
                                 <div class="form-group">
                                    <input type="text" name="uid" placeholder="Your User Id" required="" class="form-control" />
                                </div>
                                 <div class="form-group">
                                    <input type="text" name="uname" placeholder="Your Name" required="" class="form-control" />
                                </div>
                                 <div class="form-group">
                                    <input type="password"  name="upass" placeholder="your Password" required=""class="form-control" />
                                </div>
                                <div class="form-group">
                                    <input type="password" name="ucpass" placeholder="confirm Password" required="" class="form-control" />
                                </div>  
                                 <div class="form-group">
                                    <input type="email"  name="uemail" placeholder="Your Email" required="" class="form-control" />
                                </div>
                                 <div class="form-group">
                                    <input type="text" name="uphone" placeholder="Phone Number" required="" class="form-control" />
                                </div>
                               
                                   
                                <div class="form-group text-left">
                                    <input type="submit" value="CREATE ACCOUNT" class="btn btn-success" />
                                    <input type="reset" value="RESET"class="btn btn-primary" />
                                    
                                </div> 
                             </form>                              
                                
                                
                            </div>
                        </div>
          
                    </div>
                     
                       </div>
                     </div>
                 </div>
            </div>
        </div> 
    </body>
</html>
