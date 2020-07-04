<%@ Page Language="C#" AutoEventWireup="true" CodeFile="book.aspx.cs" Inherits="book" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


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
   <link href='#' rel='stylesheet' type='text/css' />
          <style type="text/css">
              .newStyle1
              {
                  font-family: "Berlin Sans FB Demi";
                  font-size: 25px;
                  font-weight: bold;
                  color: #FFFFFF;
                  background-color: #FF0000;
              }
              .newStyle2
              {
                  font-family: "Berlin Sans FB Demi";
                  font-size: 25px;
                  color: #FFFFFF;
                  background-color: #FF0000;
              }
              .newStyle3
              {
                  font-family: "Berlin Sans FB Demi";
                  font-size: 25px;
                  color: #FFFFFF;
                  background-color: #FF0000;
              }
              .style1
              {
                  width: 100%;
                  height: 33px;
              }
              .style2
              {
                  width: 203px;
              }
              .style3
              {
                  width: 342px;
              }
              .style4
              {
                  width: 212px;
              }
              .style5
              {
                  width: 100%;
              }
              .style6
              {
                  width: 319px;
              }
              .style7
              {
                  width: 254px;
              }
              .style9
              {
                  width: 275px;
              }
              .style10
              {
                  width: 369px;
              }
              .style12
              {
                  width: 390px;
              }
              .style13
              {
                  width: 389px;
              }
              .style14
              {
                  width: 201px;
              }
              .style15
              {
                  width: 345px;
              }
          </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.html"></a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> &nbsp;&nbsp; <a href="f_page.aspx" class="btn btn-danger square-btn-adjust">Logout</a> </div>
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
                        <a  class="Employee.aspx" href="Employee.aspx"><i class="fa fa-qrcode fa-3x"></i>Employee</a>
                    </li>
						   <li  >
                        <a  href="feedback.aspx" ><i class="fa fa-bar-chart-o fa-3x"></i> Feedback</a>
                    </li>	
                      <li  >
                        <a class="active-menu" href="book.aspx"><i class="fa fa-table fa-3x"></i> Booking</a>
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
                     <h2>Bookings </h2>   
                        <h5>Welcome, Love to see you back. </h5>
                       
                    </div>
                </div>
                 <!-- /. ROW  -->
                   <!-- /. ROW  -->
            <div>
            </div>
            <div>
                <table class="style5">
                    <tr>
                        <td align="right" class="style12" style="font-weight: bold">
                            SELECT YOUR DATE:&nbsp;
                                </td>
                                <td align="center" class="style9">
                                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                                        BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                                        Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="140px" 
                                        onselectionchanged="Calendar1_SelectionChanged" ShowGridLines="True" 
                                        Width="268px">
                                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                        <SelectorStyle BackColor="#FFCC66" />
                                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                                            ForeColor="#FFFFCC" />
                                    </asp:Calendar>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
            </div>
            <div>
                <table class="style5">
                    <tr>
                        <td class="style13">
                            &nbsp;</td>
                        <td align="left" class="style10">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;<asp:TextBox ID="TextBox13" runat="server" Width="98px" 
                                BorderStyle="Solid" Font-Bold="True"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </div>
            <div>
                <br />
                <br />
            </div>
                    <!-- /. ROW  -->
            <div class="newStyle1" align="center">
                APPROVED</div>
                    <!-- /. ROW  -->
                    <!-- /. ROW  -->
                    <div>
                        <br />
                        <br />
                    </div>
                    <div>
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateSelectButton="True" 
                            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="4" Width="985px" 
                            onselectedindexchanged="GridView3_SelectedIndexChanged">
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        </asp:GridView>
                        <br />
            <div align="center" class="newStyle2">
                COMPLETED</div> 
                            <br />
                    <asp:GridView ID="GridView2" runat="server" BackColor="White" 
                        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                        Width="993px" AutoGenerateSelectButton="True" 
                        onselectedindexchanged="GridView2_SelectedIndexChanged">
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    </asp:GridView>
                            <br />
                <div align="center" class="newStyle3">
                    DETAILS</div> 
                            <br />
                        <table class="style1" style="font-weight: bold">
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="NAME :"></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:Label ID="Label16" runat="server"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="CONTACT NO. :"></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:Label ID="Label17" runat="server"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="EMAIL ID :"></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:Label ID="Label18" runat="server"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="BOOKING ID :"></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:Label ID="Label19" runat="server"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Strikeout="False" 
                                        Text="BOOKING DATE :"></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:Label ID="Label20" runat="server"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="PICK UP ADDRESS :"></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:Label ID="Label21" runat="server"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="PICK UP CITY :"></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:Label ID="Label22" runat="server"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" 
                                        Text="DESTINATION ADDRESS"></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:Label ID="Label23" runat="server"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label9" runat="server" Font-Bold="True" 
                                        Text="DESTINATION CITY :"></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:Label ID="Label24" runat="server"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="PICKED CAR :"></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:Label ID="Label25" runat="server"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="CAR NUMBER :"></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:Label ID="Label26" runat="server"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="DRIVER NAME :"></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:Label ID="Label27" runat="server"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                    
                            </tr>
                        </table>
                            <table class="style5" style="font-weight: bold">
                                <tr>
                                    <td class="style14">
                                        <asp:Label ID="Label13" runat="server" Text="AMOUNT :"></asp:Label>
                                    </td>
                                    <td class="style15">
                                        <asp:Label ID="Label28" runat="server"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style14">
                                        &nbsp;</td>
                                    <td class="style15">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style14">
                                        <asp:Label ID="Label14" runat="server" Text="DISCOUNT:"></asp:Label>
                                    </td>
                                    <td class="style15">
                                        <asp:Label ID="Label29" runat="server"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style14">
                                        &nbsp;</td>
                                    <td class="style15">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style14">
                                        <asp:Label ID="Label15" runat="server" Text="TOTAL AMOUNT:"></asp:Label>
                                    </td>
                                    <td class="style15">
                                        <asp:Label ID="Label30" runat="server"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style14">
                                        &nbsp;</td>
                                    <td class="style15">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        <br />
                        <br />
                    </div>
                    <div>
                        <br />
                    </div>
                    <!-- /. ROW  -->
            <div>
                <br />
                <br />
                <br />
                <br />
            </div>
                <div>
                    <br />
                    <br />
                    <br />
                </div>
                    <div>
                    </div>
                    <div>
                        <div>
                        </div>
                        <div>
                        </div>
                        <div>
                            <table class="style1">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td class="style4">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div>
                        <br />
                    </div> 
                    <div>
                    </div> 
                    <div >
                        <br />
                        <br />
                    </div>
                    <div>
                        <table class="style5">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td class="style6">
                                    &nbsp;</td>
                                <td class="style7">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </div>

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
