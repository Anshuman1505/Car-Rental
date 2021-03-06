﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="book_rept1.aspx.cs" Inherits="book_rept1" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>ADMIN PORTAL</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
          <style type="text/css">
              .style1
              {
                  width: 100%;
              }
              .style2
              {
                  width: 171px;
              }
              .style3
              {
                  width: 420px;
              }
              .style4
              {
                  width: 443px;
              }
          </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"></a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;">  &nbsp; <a href="f_page.aspx" class="btn btn-danger square-btn-adjust">Logout</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="img/find_user.png" class="user-image img-responsive"/>
					</li>
				
					
                    <li>
                        <a  href="Car.aspx"><i class="fa fa-dashboard fa-3x"></i> Car</a>
                    </li>
                      <li>
                        <a  href="Enquiries.aspx"><i class="fa fa-desktop fa-3x"></i> Enquiries</a>
                    </li>
                    <li>
                        <a  href="Employee.aspx"><i class="fa fa-qrcode fa-3x"></i> Employee</a>
                    </li>
						   <li  >
                        <a  href="feedback.aspx"><i class="fa fa-bar-chart-o fa-3x"></i> Feedback</a>
                    </li>	
                      <li  >
                        <a  href="book.aspx"><i class="fa fa-table fa-3x"></i> Booking</a>
                    </li>
                    
					                   
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-3x"></i> Reports<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="Emp_rep1.aspx">Employee Report</a>
                            </li>
                            <li>
                                <a href="book_rept1.aspx">Booking Report</a>
                            </li>
                            <li>
                                <a href="#">Ticket Print<span class="fa arrow"></span></a>
                                 </li>
                        </ul>
                      </li>  
                  	
                </ul>
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Booking Report</h2>
                        <p>&nbsp;</p>   
                       
                    </div>
                </div>
                <div>
                </div>
                <div>
                    <table class="style1">
                        <tr>
                            <td align="right" class="style3" style="font-weight: bold">
                                SELECT YOUR DATE :&nbsp;&nbsp;&nbsp;
                            </td>
                            <td align="left" class="style4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                                    BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="143px" 
                                    onselectionchanged="Calendar1_SelectionChanged" ShowGridLines="True" 
                                    Width="220px">
                                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                    <SelectorStyle BackColor="#FFCC66" />
                                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                    <OtherMonthDayStyle ForeColor="#CC9966" />
                                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                                        ForeColor="#FFFFCC" />
                                </asp:Calendar>
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Font-Bold="True" 
                                    Width="95px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </div>
                <div>
                    <br />
                    <br />
                    <br />
                </div>
                <div align="center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" 
                        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="4" Width="982px" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    </asp:GridView>
                </div>
                <div>
                </div>
                <div>
                    <br />
                </div>
                <div>
                    <table class="style1">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style2">
                                <br />
                                <br />
                                <asp:Button ID="Button1" runat="server" BackColor="Red" BorderStyle="None" 
                                    Font-Bold="True" Font-Names="Berlin Sans FB Demi" Font-Size="Large" 
                                    ForeColor="White" Height="31px" Text="Generate Report" Width="210px" 
                                    onclick="Button1_Click" />
                                <br />
                                <br />
                                <br />
                                <asp:Button ID="Button2" runat="server" BackColor="Red" BorderStyle="None" 
                                    Font-Bold="True" Font-Names="Berlin Sans FB Demi" Font-Size="Large" 
                                    ForeColor="White" Height="31px" onclick="Button2_Click" Text="Full Report" 
                                    Width="208px" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </div>
                 <!-- /. ROW  -->
               
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="js/jquery.metisMenu.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="js/custom.js"></script>
    
   
</form>
    
   
</body>
</html>
