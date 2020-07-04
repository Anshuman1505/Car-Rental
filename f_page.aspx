<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f_page.aspx.cs" Inherits="f_page" %>



<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Home</title>
		<meta charset="utf-8">
		<meta name = "format-detection" content = "telephone=no" />
		
		<link rel="shortcut icon" href="img/favicon.ico" />
		<link rel="stylesheet" href="booking/css/booking.css">
		<link rel="stylesheet" href="css1/camera.css">
		<link rel="stylesheet" href="css1/owl.carousel.css">
		<link rel="stylesheet" href="css1/style.css">
		<script src="js1/jquery.js"></script>
		<script src="js1/jquery-migrate-1.2.1.js"></script>
		<script src="js1/script.js"></script>
		<script src="js1/superfish.js"></script>
		<script src="js1/jquery.ui.totop.js"></script>
		<script src="js1/jquery.equalheights.js"></script>
		<script src="js1/jquery.mobilemenu.js"></script>
		<script src="js1/jquery.easing.1.3.js"></script>
		<script src="js1/owl.carousel.js"></script>
		<script src="js1/camera.js"></script>
		<form id="form1" runat="server">
		<!--[if (gt IE 9)|!(IE)]><!-->
		<script src="js1/jquery.mobile.customized.min.js"></script>
		
	</head>
	<body class="page1" id="top">
		<div class="main">
<!--==============================header=================================-->
			<header>
				<div class="menu_block ">
					<div class="container_12">
						<div class="grid_12">
							<nav class="horizontal-nav full-width horizontalNav-notprocessed">
								<ul class="sf-menu">
									<li class="current"><a href="f_page.aspx">Home</a></li>
									<li><a href="About.aspx">About</a></li>
									<li><a href="f_car.aspx">Cars</a></li>
									<li><a href="service.aspx">Services</a></li>
									<li><a href="contacts.aspx">Contacts</a></li>
									 <li>
                                <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown">Sign UP</a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="login.aspx">USER SIGN UP</a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="driverlogin.aspx">DRIVER SIGN UP</a></li>
                                </ul>
                            </li>

								</ul>
							</nav>
							<div class="clear"></div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="container_12">
					<div class="grid_12">
						<h1>
							<a href="index.html">
								<img src="img/logo.png" alt="Your Happy Family">
							</a>
						</h1>
					</div>
				</div>
				<div class="clear"></div>
				<div align="center">
				    <asp:Image ID="Image1" runat="server" Height="272px" 
                        ImageUrl="~/img/slide-2.png" Width="782px" />
				</div>
				<div>
				    &nbsp;&nbsp;&nbsp;&nbsp;
				</div>
			</header>
			
			<div class="container_12">
				<div class="grid_4">
					<div class="banner">
						<div class="maxheight">
							<div class="banner_title">
								<img src="img/icon1.png" alt="">
								<div class="extra_wrapper">Fast&amp;
									<div class="color1">Safe</div>
								</div>
							</div>
							One click and a car comes directly to you. Hop in—your driver knows exactly where to go. And when you get there, just step out. Payment is completely seamless.
						
						Whether riding in the backseat or driving up front, every part of the YourTexi experience is designed around your safety and security.
						</div>
					</div>
				</div>
				<div class="grid_4">
					<div class="banner">
						<div class="maxheight">
							<div class="banner_title">
								<img src="img/icon2.png" alt="">
								<div class="extra_wrapper">Best
									<div class="color1">Prices</div>
								</div>
							</div>
							Economy cars at everyday prices are always available. For special occasions, no occasion at all, or when you just a need a bit more room, call a black car or SUV.
						</div>
					</div>
				</div>
				<div class="grid_4">
					<div class="banner">
						<div class="maxheight">
							<div class="banner_title">
								<img src="img/icon3.png" alt="">
								<div class="extra_wrapper">Anywhere
									<div class="color1">Anytime</div>
								</div>
							</div>
							Daily commute. Errand across town. Early morning flight. Late night drinks. Wherever you’re headed, count on Your Texi for a ride.
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="c_phone">
				<div class="container_12">
					<div class="grid_12">
						
						<span>BOOK NOW!</span>
					</div>
					<div class="clear"></div>
				</div>
			</div>
<!--==============================Content=================================-->
			<div class="content"><div class="ic"></div>
			</div>
		</div>
<!--==============================footer=================================-->
		<footer>
			<div class="container_12">
				<div class="grid_12">
					<div class="f_phone"><span>Call Us:</span> + 1800 559 6580</div>
					
					<div class="copy">
						<div class="st1">
						<div class="brand">Your <span class="color1">T</span>axi </div>
						&copy; 2017	| <a href="#">Privacy Policy</a> </div> Website designed by <a href="f_page.aspx" rel="nofollow">ANSHUMAN PATIDAR,ARPIT JAIN,ATUL BADGUJAR</a>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</footer>
		
	</body>
</html>
</form>
