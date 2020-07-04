<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserFeedback.aspx.cs" Inherits="UserFeedback" %>


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
              }
              .style2
              {
                  width: 141px;
              }
              .style3
              {
                  width: 329px;
              }
              .style4
              {
                  width: 141px;
                  height: 21px;
              }
              .style6
              {
                  height: 40px;
              }
              .style8
              {
                  width: 141px;
                  height: 70px;
              }
              .style9
              {
                  width: 329px;
              }
              .style10
              {
                  height: 70px;
              }
              .newStyle2
              {
                  font-family: "Berlin Sans FB Demi";
                  font-size: large;
                  font-weight: bold;
                  color: #FFFFFF;
                  background-color: #FF0000;
              }
              .newStyle3
              {
                  font-family: "Berlin Sans FB Demi";
                  font-size: large;
                  font-weight: bold;
                  color: #FFFFFF;
                  background-color: #FF0000;
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
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </a> 
            </div>
        <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> &nbsp;&nbsp; Last Access :
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;<asp:Button ID="Button2" runat="server" BackColor="Red" Text="LOG OUT" 
                onclick="Button2_Click" />
        </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image2" runat="server" Height="155px" Width="190px" />
                </p>
                <ul class="nav" id="main-menu">
				
					
                    <li>
                        <a href="MyTrip.aspx"><i class="fa fa-dashboard fa-3x"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MyTrip</a>
                    </li>
                    <li>
                        <a  href="Userprofile.aspx"><i class="fa fa-desktop fa-3x"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Profile</a>
                        </li>
                    <li>
                        <a  href="Enquiries.aspx"><i class="fa fa-qrcode fa-3x"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enquiry</a>
                    </li>
						   <li  >
                        <a class="active-menu"   href="UserFeedback.aspx"><i class="fa fa-bar-chart-o fa-3x"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Feedback</a>
                    </li>	
                      <li  >
                        <a  href="search_car.aspx"><i class="fa fa-table fa-3x"></i>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Book Ride</a>
                    </li>
                   	
					                   
                     <li  >
                        <a  href="Ticket.aspx"><i class="fa fa-square-o fa-3x"></i> Ticket</a>
                    </li>
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div>
                    <div align="center" class="newStyle3">
                        YOUR COMPLETED RIDES</div>
                    <div>
                        <br />
                    </div>
                    <div>
                        <br />
                    </div>
                    <div>
                        <br />
                    </div>
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <!-- /. ROW  -->
                 <!-- /. ROW  -->
                 <div>
                 <div>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" 
                            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="4" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                            Width="990px">
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        </asp:GridView>
                        <br />
                     <table class="style1" align="center">
                         <tr>
                             <td class="style6" align="center" colspan="3" 
                                 style="font-family: 'Arial Black'; font-weight: normal; font-size: x-large; background-color: #FF0000; color: #FFFFFF;">
                                 Give Your Feedback</td>
                            </tr>
                         <tr>
                             <td class="style10" align="left" 
                                 style="font-family: Arial; font-weight: bold;">
                                 Booking Id* </td>
                             <td class="style10" colspan="2">
                                 <asp:TextBox ID="TextBox1" runat="server" Width="466px"></asp:TextBox>
                             </td>
                            </tr>
                         <tr>
                             <td class="style10" align="left" 
                                 style="font-family: Arial; font-weight: bold;">
                                 Service</td>
                             <td class="style10" colspan="2">
                                 <asp:RadioButton ID="RadioButton1" runat="server" Text="Poor" 
                                     GroupName="First" oncheckedchanged="RadioButton1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                                 <asp:RadioButton ID="RadioButton2" runat="server" Text="Good" 
                                     GroupName="First" oncheckedchanged="RadioButton2_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:RadioButton ID="RadioButton3" runat="server" Text="Very Good" 
                                     GroupName="First" oncheckedchanged="RadioButton3_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:RadioButton ID="RadioButton4" runat="server" Text="Excellent" 
                                     GroupName="First" oncheckedchanged="RadioButton4_CheckedChanged" />
                             </td>
                            </tr>
                         <tr>
                             <td class="style10" align="left" 
                                 style="font-family: Arial; font-weight: bolder;">
                                 Response</td>
                             <td class="style10" colspan="2">
                                 <asp:RadioButton ID="RadioButton5" runat="server" Text="Slow" 
                                     GroupName="Second" oncheckedchanged="RadioButton5_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:RadioButton ID="RadioButton6" runat="server" Text="Very Slow" 
                                     GroupName="Second" oncheckedchanged="RadioButton6_CheckedChanged" />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                 <asp:RadioButton ID="RadioButton7" runat="server" Text="Fast" 
                                     GroupName="Second" oncheckedchanged="RadioButton7_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:RadioButton ID="RadioButton8" runat="server" Text="Medium" 
                                     GroupName="Second" oncheckedchanged="RadioButton8_CheckedChanged" />
                                     
                             </td>
                            </tr>
                         <tr>
                             <td class="style10" align="left" style="font-family: Arial; font-weight: bold">
                                 Driver Behaviour</td>
                             <td class="style10" colspan="2">
                                 <asp:RadioButton ID="RadioButton9" runat="server" Text="Bad" 
                                     GroupName="Third" oncheckedchanged="RadioButton9_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:RadioButton ID="RadioButton10" runat="server" Text="Very Bad" 
                                     GroupName="Third" oncheckedchanged="RadioButton10_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:RadioButton ID="RadioButton11" runat="server" Text="Good" 
                                     GroupName="Third" oncheckedchanged="RadioButton11_CheckedChanged" />
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:RadioButton ID="RadioButton12" runat="server" Text="Very Good" 
                                     GroupName="Third" oncheckedchanged="RadioButton12_CheckedChanged" />
&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style8" align="left" style="font-family: Arial; font-weight: bold">
                                    Others                              Others</td>
                                <td class="style9" rowspan="8">
                                    <asp:TextBox ID="TextBox2" runat="server" Height="179px" TextMode="MultiLine" 
                                        Width="235px"></asp:TextBox>
                                </td>
                                <td rowspan="11">
                                    <asp:Image ID="Image1" runat="server" Height="230px" 
                                        ImageUrl="~/img/bigstock-feedback-icon-Testimonials-an-53156401.jpg" 
                                        Width="237px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style3">
                                    <asp:Button ID="Button1" runat="server" Text="SUBMIT" Width="121px" 
                                        onclick="Button1_Click" BackColor="Red" Font-Bold="True" 
                                        Font-Names="Berlin Sans FB" Font-Size="Medium" ForeColor="White" 
                                        Height="30px" />
                                </td>
                            </tr>
                        </table>
                 </div>
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
</html>
