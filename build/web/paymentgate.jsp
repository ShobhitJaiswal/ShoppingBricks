<!doctype html>
<head>
<title>Home</title>
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
 				<%@include file="header2.jsp" %>
 
				<div class="row">
                                    <div class="col-lg-3"></div>
                                    <div class="col-lg-6 center_title_bar_new"style="border:1px solid red;margin-bottom: 10px;margin-top: 10px" >
                                          <center><h4>Fill Card Details:</h4></center>
				<div class="prod_box_big_new" >
					<div class="row top_prod_box_big-new"></div>
                                        
					<div class=" center_prod_box_big_new" >
						<div class="text-center contact_form_new" ">
							<form action="Payment" method="get" name="contactus"
								onsubmit="return check()">
								<div class="text-centerform_row_new">
									<label class="contact_new" style="width: auto"><strong>Card
											Holder Name :</strong>
									</label> <input type="text" class="contact_input_new" name="card_holder_name"
										onchange="return check()" />
								</div>
								<div class="form_row_new">
									<label class="contact_new" style="width: auto;"><strong>Card
											Number :</strong>
									</label> <input type="text" class="contact_input_new" name="card_number"
										onchange="return check()" />
								</div>
								<div class="form_row_new">
									<label class="contact_new" style="width: auto;"><strong>CVV
											Code(Secure) :</strong>
									</label> <input type="text" class="contact_input_new" name="cvv_code"
										onchange="return check()" />
								</div>
								<div>
									<br />
								</div>


								<div class="form_row_new">
									<label class="contact_new" style="width: auto;"><strong
										style="color: #000000;">Expiry Date(Valid Through) :</strong>
									</label>

									<div class="form_row_new">
										<fieldset class="contact_new">
											<label style="color: #000000;" class="contact_new">Month</label> <select
												id="month_start" name="month_start" style="color: #000000;">
												<option>January</option>
												<option>February</option>
												<option>March</option>
												<option>April</option>
												<option>May</option>
												<option>June</option>
												<option>July</option>
												<option>August</option>
												<option>September</option>
												<option>October</option>
												<option>November</option>
												<option>December</option>
											</select> - <label  style="color: #000000;" >Year</label>
											<select class="contact_new" name="year_start"
												style="color: #000000;">
												<option>2009</option>
												<option>2010</option>
												<option>2011</option>
												<option>2012</option>
												<option>2013</option>
												<option>2014</option>
												<option>2015</option>
												<option>2016</option>
												<option>2017</option>
												<option>2018</option>
												<option>2019</option>
												<option>2020</option>
												<option>2021</option>
												<option>2022</option>
												<option>2023</option>
												<option>2024</option>
												<option>2025</option>
												<option>2026</option>
												<option>2027</option>
												<option>2028</option>
											</select> <span class="inst">(Month-Year)</span>
										</fieldset>
									</div>
								</div>


                                                            <div class="form_row" style="margin-bottom: 50px;margin-top: 50px">
									<input type="submit" class="btn btn-success" value="send details"  />
								</div>
							</form>
						</div>
                                            
					</div>
                                       

				</div>
				</div>
                                     <div class="col-lg-3"></div>
 			</div>
			<%@include file="footer.jsp" %>
 </body>
</html>
