<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contacts.aspx.cs" Inherits="contacts" %>



<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Contacts</title>
		<meta charset="utf-8">
		<meta name = "format-detection" content = "telephone=no" />
		<link rel="icon" href="img/favicon.ico">
		<link rel="shortcut icon" href="img/favicon.ico" />
		<link rel="stylesheet" href="css1/form.css">
		<link rel="stylesheet" href="css1/style.css">
		<script src="js1/jquery.js"></script>
		<script src="js1/jquery-migrate-1.2.1.js"></script>
		<script src="js1/script.js"></script>
		<script src="js1/superfish.js"></script>
		<script src="js1/jquery.ui.totop.js"></script>
		<script src="js1/jquery.equalheights.js"></script>
		<script src="js1/jquery.mobilemenu.js"></script>
		<script src="js1/jquery.easing.1.3.js"></script>
		<script src="js1/TMForm.js"></script>
		<script>
			$(document).ready(function(){
				$().UItoTop({ easingType: 'easeOutQuart' });
			});
		</script>
		<style type="text/css">
            .style1
            {
                width: 100%;
                height: 30px;
            }
            .style2
            {
                width: 115px;
            }
            .style3
            {
                width: 127px;
            }
            .style4
            {
                width: 320px;
            }
        </style>
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
									<li><a href="f_car.aspx">Cars</a></li>
									<li><a href="service.aspx">Services</a></li>
									<li class="current"><a href="contacts.aspx">Contacts</a></li>
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
			</header>
<!--==============================Content=================================-->
			<div class="content"><div class="ic">More Website Templates @ TemplateMonster.com - April 07, 2014!</div>
						<form id="form" runat="server">
				<div class="container_12">
					<div class="grid_12">
						
					</div>
					<div class="grid_5">
						<h3>Contact Info</h3>
						<div class="map">
							
							<p>Don’t forget, 24/7 support is available for YourTaxi User <span class="color1"><a href="#" rel="nofollow"></a></span></p>
							<p> <span class="color1"><a href="#" rel="nofollow"> Contact Your Taxi </a></span> 
                                customer services if you need any help in Booking of your ride.</p>
							<address>
								<dl>
									<dt>The Your Taxi co. <br>
										1/2 IT PARK,<br>
										Ring Road, Indore,INDIA.
									</dt>
									<dd><span>Telephone:</span> +1 800 603 6035</dd>
									<dd><span>FAX:</span> +1 800 889 9898</dd>
									<dd>E-mail: <a href="#" class="color1">YourTaxi@gmail.com</a></dd>
								</dl>
							</address>
						</div>
					</div>
					<div class="grid_6 prefix_1">
						<h3>Enquiry Form</h3>
							<div class="success_wrapper">
								<div class="success-message">Contact form submitted</div>
							</div>
							<label class="name">&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged" 
                            Width="194px" placeholder = "Name"></asp:TextBox>
							</label>
							<label class="email">
								&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" Width="194px" placeholder = "Email"></asp:TextBox>
							</label>
							<label class="phone">
								&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox3" runat="server" placeholder = "contact" ></asp:TextBox>
							</label>
							<label class="message">
								&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox4" runat="server" placeholder = "Message" 
                            style="height: 104px" TextMode="MultiLine"></asp:TextBox>
							</label>
							<div>
								<div class="clear"></div>
							</div>
					</div>
						<div>
						</div>
						
				</div>
				<div>
				    <table class="style1">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style2">
                                <asp:Button ID="Button1" runat="server" BackColor="#FDC903" BorderStyle="None" 
                                    Font-Bold="True" ForeColor="White" onclick="Button1_Click1" Text="SEND" 
                                    Width="122px" />
                            </td>
                            <td class="style3">
&nbsp;
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
				</div>
						
						</form>
						
			</div>
		</div>
<!--==============================footer=================================-->
		<footer>
			<div class="container_12">
				<div class="grid_12">
					<div class="f_phone"><span>Call Us:</span> + 1800 559 6580</div>
					
					<div class="copy">
						<div class="st1">
						<div class="brand">Your<span class="color1">T</span>axi </div>
						&copy; 2017	| <a href="#">Privacy Policy</a> </div> Website designed by <a href="#" rel="nofollow">ARPIT JAIN ,ANSHUMAN PATIDAR,ATUL BADGUJAR</a>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</footer>
	</body>
</html>