<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f_car.aspx.cs" Inherits="f_car" %>



<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Cars</title>
		<meta charset="utf-8">
		<meta name = "format-detection" content = "telephone=no" />
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="css1/touchTouch.css">
		<link rel="stylesheet" href="css1/style.css">
		<script src="js1/jquery.js"></script>
		<script src="js1/jquery-migrate-1.2.1.js"></script>
		<script src="js1/script.js"></script>
		<script src="js1/superfish.js"></script>
		<script src="js1/jquery.ui.totop.js"></script>
		<script src="js1/jquery.equalheights.js"></script>
		<script src="js1/jquery.mobilemenu.js"></script>
		<script src="js1/jquery.easing.1.3.js"></script>
		<script src="js1/touchTouch.jquery.js"></script>
		<script>
			$(document).ready(function(){
				$().UItoTop({ easingType: 'easeOutQuart' });
				$('.gallery a.gal').touchTouch();
			});
		</script>
		<form id="form1" runat="server">
		<!--[if lt IE 8]>
			<div style=' clear: both; text-align:center; position: relative;'>
				<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
					&nbsp;</a></div>
		<![endif]-->
		<!--[if lt IE 9]>
			<script src="js/html5shiv.js"></script>
			<link rel="stylesheet" media="screen" href="css/ie.css">
		<![endif]-->
	</head>
	<body class="" id="top">
		<div class="main">
<!--==============================header=================================-->
			<header>
				<div class="menu_block ">
					<div class="container_12">
						<div class="grid_12">
							<nav class="horizontal-nav full-width horizontalNav-notprocessed">
								<ul class="sf-menu">
									<li><a href="f_page.aspx">Home</a></li>
									<li><a href="About.aspx">About</a></li>
									<li class="current"><a href="f_car.aspx">Cars</a></li>
									<li><a href="service.aspx">Services</a></li>
									<li><a href="contacts.aspx">Contacts</a></li>
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
							<a href="f_page.aspx">
								<img src="img/logo.png" alt="Your Happy Family">
							</a>
						</h1>
					</div>
				</div>
				<div class="clear"></div>
			</header>
<!--==============================Content=================================-->
			<div class="content"><div class="ic">More Website Templates @ TemplateMonster.com - April 07, 2014!</div>
				<div class="container_12">
					<div class="grid_12">
						<h3>Economy</h3>
					</div>
					<div class="clear"></div>
					<div class="gallery">
						<div class="grid_4">
                            <asp:Image ID="Image1" runat="server" Height="274px" 
                                ImageUrl="~/img/26612026-maruti_baleno_01.jpg" Width="350px" />
                        </div>
						<div class="grid_4">
                            <asp:Image ID="Image2" runat="server" Height="273px" 
                                ImageUrl="~/img/hyundai-grand-i10_827x510_41460970594.jpg" Width="350px" />
                        </div>
						<div class="grid_4">
                            <asp:Image ID="Image3" runat="server" Height="274px" 
                                ImageUrl="~/img/Hyundai-Eon-Popular-Hatchback-Car-In-India-For-2016.png" 
                                Width="351px" />
                        </div>
					</div>
					<div class="grid_12">
						<h3>Standard</h3>
					</div>
					<div class="clear"></div>
					<div class="gallery">
						<div class="grid_4">
                            <asp:Image ID="Image4" runat="server" Height="270px" 
                                ImageUrl="~/img/2008-Toyota-Fortuner-Cheap-Car-Rentals-01.jpg" Width="350px" />
                        </div>
						<div class="grid_4">
                            <asp:Image ID="Image5" runat="server" Height="270px" 
                                ImageUrl="~/img/skoda-octavia_678x352_51442217355.jpg" Width="352px" />
                        </div>
						<div class="grid_4">
                            <asp:Image ID="Image6" runat="server" Height="271px" 
                                ImageUrl="~/img/Mitsubishi-Montero-Cheap-Car-Rentals-01.jpg" Width="349px" />
                        </div>
					</div>
					<div class="grid_12">
						<h3>Luxury</h3>
					</div>
					<div class="clear"></div>
					<div class="gallery">
						<div class="grid_4">
                            <asp:Image ID="Image7" runat="server" Height="274px" 
                                ImageUrl="~/img/jaguar-xf.jpg" Width="349px" />
                        </div>
						<div class="grid_4">
                            <asp:Image ID="Image8" runat="server" Height="274px" 
                                ImageUrl="~/img/x900733-2014_mercedes_benz_s_class.jpg.pagespeed.ic.u1DiiaR9DY.jpg" 
                                Width="350px" />
                        </div>
						<div class="grid_4">
                            <asp:Image ID="Image9" runat="server" Height="273px" 
                                ImageUrl="~/img/Ibis-White.jpg" Width="350px" />
                        </div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
<!--==============================footer=================================-->
		<footer>
			<div class="container_12">
				<div class="grid_12">
					<div class="f_phone"><span>Call Us:</span> + 1800 559 6580</div>
					<div class="copy">
						<div class="st1">
						<div class="brand">Tour<span class="color1">T</span>axi </div>
						&copy; 2017	| <a href="#">Privacy Policy</a> </div> Website designed by <a href="f_page.aspx" rel="nofollow">ANSHUMAN PATIDAR ,ARPIT JAIN,ATUL BADGUJAR</a>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</footer>
	</form>
	</body>
</html>