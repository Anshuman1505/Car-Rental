<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Book_Ride.aspx.cs" Inherits="Book_Ride" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
	<!-- BOOTSTRAP STYLES-->
    <link href="css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="css/font-awesome.css" rel="stylesheet" />
     <!-- MORRIS CHART STYLES-->
    <link href="js/morris/morris-0.4.3.min.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
          <style type="text/css">
              .newStyle1
              {
                  font-family: Aharoni;
                  font-weight: bold;
                  color: #FFFFFF;
                  background-color: #FF0000;
                  font-size: 22px;
              }
              .style1
              {
                  width: 100%;
                  height: 4px;
              }
              .style2
              {
                  width: 170px;
              }
              .style4
              {
                  width: 170px;
                  height: 60px;
              }
              .style5
              {
                  height: 60px;
              }
              .style7
              {
                  width: 258px;
                  height: 60px;
              }
              .style8
              {
                  width: 170px;
                  height: 202px;
              }
              .style9
              {
                  width: 258px;
                  height: 202px;
              }
              .style10
              {
                  height: 202px;
              }
              .style11
              {
                  width: 100%;
                  height: 249px;
              }
              .style12
              {
              }
              .style13
              {
                  width: 223px;
              }
              .style14
              {
                  width: 223px;
                  height: 202px;
              }
              .style15
              {
                  width: 223px;
                  height: 60px;
              }
              .style16
              {
                  width: 100%;
              }
              .style17
              {
                  width: 252px;
              }
              .style18
              {
                  width: 610px;
              }
              .newStyle2
              {
                  background-color: #000000;
              }
              .style19
              {
                  height: 20px;
              }
              .style20
              {
                  width: 223px;
                  height: 105px;
              }
              .style21
              {
                  width: 258px;
                  height: 105px;
              }
              .style22
              {
                  width: 170px;
                  height: 105px;
              }
              .style23
              {
                  height: 105px;
              }
              .style28
              {
                  width: 223px;
                  height: 90px;
              }
              .style29
              {
                  width: 258px;
                  height: 90px;
              }
              .style30
              {
                  width: 170px;
                  height: 90px;
              }
              .style31
              {
                  height: 90px;
              }
              .style32
              {
                  width: 223px;
                  height: 93px;
              }
              .style33
              {
                  width: 258px;
                  height: 93px;
              }
              .style34
              {
                  width: 170px;
                  height: 93px;
              }
              .style35
              {
                  height: 93px;
              }
              .style36
              {
                  width: 258px;
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
                <a class="navbar-brand" href="index.html">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </a> 
            </div>
        <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> &nbsp;&nbsp;Last access :&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            &nbsp;
            <asp:Button ID="Button3" runat="server" BackColor="Red" 
                Text="LOG OUT" onclick="Button3_Click" Width="80px" />
        </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image2" runat="server" Height="156px" 
                        ImageUrl="~/img/XUV500.jpg" Width="189px" />
                </p>
                <ul class="nav" id="main-menu">
				
					
                    <li>
                        <a  href="MyTrip.aspx"><i class="fa fa-dashboard fa-3x"></i>MyTrip</a>
                    </li>
                    <li>
                        <a  href="UserProfile.aspx"><i class="fa fa-desktop fa-3x"></i>Profile</a>
                        </li>
                    <li>
                        <a  href="user_enq.aspx"><i class="fa fa-qrcode fa-3x"></i>Enquiry</a>
                    </li>
						   <li  >
                        <a    href="UserFeedback.aspx"><i class="fa fa-bar-chart-o fa-3x"></i>Feedback</a>
                    </li>	
                      <li  >
                        <a  class="active-menu" href="Book_Ride.aspx"><i class="fa fa-table fa-3x"></i>Book Ride</a>
                    </li>
                   	
					       <li  >
                        <a  href="Ticket.aspx"><i class="fa fa-square-o fa-3x"></i>Ticket</a>
                    </li>      
                                
                        </ul>
                      
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <table class="style1" style="font-family: Arial; font-weight: bold">
                    <tr>
                        <td align="center" colspan="4" 
                            style="font-family: 'Arial Black'; color: #FFFFFF; background-color: #FF0000; font-size: x-large">
                            Booking</td>
                    </tr>
                    <tr>
                        <td class="style13">
                            &nbsp;</td>
                        <td class="style36">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style14">
                            <table class="style11">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style19">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="font-family: Arial; font-weight: bold">
                                        CAR ID</td>
                                </tr>
                            </table>
                        </td>
                        <td class="style9">
                            <table class="style11">
                                <tr>
                                    <td align="center" style="font-weight: bold">
                                        CAR SELECTED</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Image ID="Image3" runat="server" Height="178px" Width="221px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style12">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style12">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Font-Bold="True"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td class="style8">
                        </td>
                        <td class="style10">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style15">
                            USER NAME</td>
                        <td class="style5" colspan="3">
                            <asp:Label ID="Label9" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            BOOKING ID                            <td class="style7">
                            <asp:Label ID="Label10" runat="server"></asp:Label>
                        </td>
                        <td class="style4">
                            &nbsp;
                            PICKUP DATE</td>
                        <td class="style5">
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                                BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                                Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="135px" 
                                ShowGridLines="True" Width="225px" 
                                onselectionchanged="Calendar1_SelectionChanged">
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
                    </tr>
                    <tr>
                        <td class="style20">
                            <br />
                            PICKUP LOCATION</td>
                        <td class="style21">
                            <br />
                            <br />
                            <asp:TextBox ID="TextBox4" runat="server" Width="218px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" Display="Dynamic"
                                ErrorMessage="*ADDRESS FEILD CANNOT BE BLANK"></asp:RequiredFieldValidator>
                            <br />
                        </td>
                        <td class="style22">
                            &nbsp;<br />
                            PICKUP CITY</td>
                        <td class="style23">
                            <br />
                            <br />
                            <br />
                            <asp:TextBox ID="TextBox5" runat="server" Width="221px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" Display = "Dynamic"   
                                ErrorMessage="*PLEASE ENTER YOUR PICKUP CITY"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" Display = "Dynamic"    
                                ErrorMessage="*CITY CANNOT BE NUMBER" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style28">
                            <br />
                            DESTINATION LOCATION</td>
                        <td class="style29">
                            <br />
                            <asp:TextBox ID="TextBox6" runat="server" Width="217px"></asp:TextBox>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" Display = "Dynamic"  
                                ErrorMessage="*ADDRESS FEILD CANNOT BE BLANK"></asp:RequiredFieldValidator>
                            
                            <br />
                            
                        </td>
                        <td class="style30">
                            &nbsp;
                            <br />
                                                        DESTINATION CITY</td>
                        <td class="style31">
                            <br />
                            <br />
                            <br />
                            <asp:TextBox ID="TextBox7" runat="server" Width="221px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox7" Display="Dynamic"
                                ErrorMessage="*DESTINATION CITY CANNOT BE BLANK"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"  ControlToValidate="TextBox7" Display = "Dynamic"  
                                ErrorMessage="*CITY CANNOT BE NUMBER " ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style32">
                            PICKUP TIME*</td>
       </td>
                        <td class="style33">
                            <br />
                            <br />
                            <br />
                            <asp:TextBox ID="TextBox19" runat="server" Width="49px" placeholder= "HH"></asp:TextBox>
                            &nbsp;
                            <asp:TextBox ID="TextBox20" runat="server" Width="48px" placeholder = "MM"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <asp:RangeValidator ID="RangeValidator1" runat="server" Type = "Integer"  MinimumValue="0" MaximumValue="23" ControlToValidate="TextBox19"
                                ErrorMessage="*TIME OUT OF RANGE"></asp:RangeValidator>
                            <br />
                            <asp:RangeValidator ID="RangeValidator2" runat="server" Type = "Integer"  MinimumValue="0" MaximumValue="59" ControlToValidate="TextBox20"
                                ErrorMessage="*TIME OUT OF RANGE"></asp:RangeValidator>
                        </td>
                        <td class="style34">
                            <td class="style35">
                            </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            <asp:Label ID="Label11" runat="server" Text="DISTANCE" Visible="False"></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:Label ID="Label12" runat="server"></asp:Label>
                        </td>
                        <td class="style4">
                            &nbsp;
                        </td>
                        <td class="style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style15">
                            <asp:Label ID="Label3" runat="server" Text="AMOUNT" Visible="False"></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:Label ID="Label13" runat="server"></asp:Label>
                        </td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style15">
                            <asp:Label ID="Label4" runat="server" Text="DISCOUNT" Visible="False"></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:Label ID="Label14" runat="server"></asp:Label>
                            <asp:Label ID="Label7" runat="server" Text="%" Visible="False"></asp:Label>
                        </td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style13">
                            <br />
                            <asp:Label ID="Label5" runat="server" Text="PAYMENT METHOD" Visible="False"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td class="style36">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="217px" 
                                Visible="False">
                                <asp:ListItem>CASH</asp:ListItem>
                                <asp:ListItem>INTERNET BANKING</asp:ListItem>
                                <asp:ListItem>PAYTM</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style2">
                            &nbsp;&nbsp;
                            <asp:Label ID="Label6" runat="server" Text="TOTAL" Visible="False"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label15" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            &nbsp;</td>
                        <td class="style36">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <div>
                    * GIVE THE TIME IN 24 HOUR FORMAT>
                </div>
                <div>
                
                    <table class="style16">
                        <tr>
                            <td align="center">
                                <asp:Button ID="Button4" runat="server" BackColor="Red" BorderStyle="None" 
                                    Font-Bold="True" Font-Names="Berlin Sans FB Demi" Font-Size="Large" 
                                    ForeColor="White" Height="40px" onclick="Button4_Click" Text="BOOK RIDE" 
                                    Width="137px" />
                            </td>
                            <td class="style17">
                            <asp:Button ID="Button1" runat="server" Text="CONFIRM BOOK" Width="186px" 
                                BackColor="Red" BorderStyle="None" Font-Bold="True" 
                                Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" 
                                Height="40px" onclick="Button1_Click2" Visible="False" />
                            </td>
                            <td class="style18">
                            <asp:Button ID="Button2" runat="server" Text="CANCEL" Width="126px" 
                                BackColor="Red" BorderStyle="None" Font-Bold="True" 
                                Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" 
                                Height="38px" onclick="Button2_Click" />
                            </td>
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
     <!-- MORRIS CHART SCRIPTS -->
     <script src="js/morris/raphael-2.1.0.min.js"></script>
    <script src="js/morris/morris.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="js/custom.js"></script>
    
   
</form>
    
   
</body>
<div class="newStyle2" style="height: 36px">
</div>
</html>
