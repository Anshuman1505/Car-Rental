<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyTrip.aspx.cs" Inherits="MyTrip" %>


<!DOCTYPE html>

<script runat="server">

   
</script>

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
              .newStyle2
              {
                  font-family: "Berlin Sans FB Demi";
                  font-size: large;
                  font-weight: bold;
                  background-color: #FF0000;
                  color: #FFFFFF;
              }
              .newStyle3
              {
                  font-family: "Berlin Sans FB Demi";
                  font-size: large;
                  font-weight: bold;
                  color: #FFFFFF;
                  background-color: #FF0000;
              }
              .style1
              {
                  width: 100%;
              }
              .style2
              {
                  width: 200px;
              }
              .style4
              {
                  width: 278px;
              }
              .newStyle4
              {
                  background-color: #000000;
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
font-size: 16px;"> &nbsp;&nbsp; Last Access :&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="Red" 
                Font-Bold="True" ForeColor="White" onclick="Button1_Click1" Text="LOG OUT" 
                Width="78px" />
        </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="157px" Width="189px" />
                </p>
                <ul class="nav" id="main-menu">
				
					
                    <li>
                        <a class="active-menu" href="MyTrip.aspx"><i class="fa fa-dashboard fa-3x"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MyTrip</a>
                    </li>
                    <li>
                        <a  href="UserProfile.aspx"><i class="fa fa-desktop fa-3x"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Profile</a>
                        </li>
                    <li>
                        <a  href="user_enq.aspx"><i class="fa fa-qrcode fa-3x"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enquiry</a>
                    </li>
						   <li  >
                        <a    href="UserFeedback.aspx"><i class="fa fa-bar-chart-o fa-3x"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Feedback</a>
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
                </div>
                 <!-- /. ROW  -->
                 <!-- /. ROW  -->
                 <!-- /. ROW  -->
                 <div align="center" class="newStyle2">
                     MY TRIPS</div>
                 <div>
                     <br />
                 </div>
                 <div style="height: 87px">
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" 
                         BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                         CellPadding="4" Width="960px" Height="24px" 
                         onselectedindexchanged="GridView1_SelectedIndexChanged">
                         <RowStyle BackColor="White" ForeColor="#330099" />
                         <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                         <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                         <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                         <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                     </asp:GridView>
                     <br />
                 <div align="center" class="newStyle3">
                     DETAILS</div>
                 </div>
                     <div>
                     <table class="style1" style="font-weight: bold">
                         <tr>
                             <td class="style2">
                                 &nbsp;</td>
                             <td align="center" class="style4" style="font-weight: bold">
                                 <br />
                                 <br />
                                 <br />
                                 <br />
                                 <br />
                                 <br />
                                 <br />
                                 <br />
                                 <br />
                                 <br />
                                 <br />
                                 <br />
                                 <br />
                                 <br />
                                 CAR SELECTED</td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2">
                                 &nbsp;</td>
                             <td class="style4">
                                 <asp:Image ID="Image2" runat="server" Height="157px" Width="273px" />
                             </td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2">
                                 &nbsp;</td>
                             <td class="style4">
                                 &nbsp;</td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2">
                                 BOOKING ID</td>
                             <td class="style4">
                                 <asp:Label ID="Label3" runat="server"></asp:Label>
                             </td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2">
                                 &nbsp;</td>
                             <td class="style4">
                                 &nbsp;</td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2">
                                 BOOKING DATE</td>
                             <td class="style4">
                                 <asp:Label ID="Label4" runat="server"></asp:Label>
                             </td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2">
                                 &nbsp;</td>
                             <td class="style4">
                                 &nbsp;</td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2">
                                 PICKUP ADDRESS</td>
                             <td class="style4">
                                 <asp:Label ID="Label5" runat="server"></asp:Label>
                             </td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2">
                                 &nbsp;</td>
                             <td class="style4">
                                 &nbsp;</td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2">
                                 PICKUP CITY</td>
                             <td class="style4">
                                 <asp:Label ID="Label6" runat="server"></asp:Label>
                             </td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2">
                                 &nbsp;</td>
                             <td class="style4">
                                 &nbsp;</td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2">
                                 DESTINATION ADDRESS</td>
                             <td class="style4">
                                 <asp:Label ID="Label7" runat="server"></asp:Label>
                             </td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2">
                                 &nbsp;</td>
                             <td class="style4">
                                 &nbsp;</td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style2">
                                 DESTINATION CITY</td>
                             <td class="style4">
                                 <asp:Label ID="Label8" runat="server"></asp:Label>
                             </td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                     </table>
                </div>
                 <div>
                     <div>
                         <table class="style1" style="font-weight: bold">
                             <tr>
                                 <td class="style2">
                                     &nbsp;</td>
                                 <td class="style4">
                                     &nbsp;</td>
                                 <td>
                                     &nbsp;</td>
                             </tr>
                             <tr>
                                 <td class="style2">
                                     DRIVER NAME                                  </td>
                                 <td class="style4">
                                     <asp:Label ID="Label9" runat="server"></asp:Label>
                                 </td>
                                 <td>
                                     &nbsp;</td>
                             </tr>
                             <tr>
                                 <td class="style2">
                                     &nbsp;</td>
                                 <td class="style4">
                                     &nbsp;</td>
                                 <td>
                                     &nbsp;</td>
                             </tr>
                             <tr>
                                 <td class="style2">
                                     DRIVER CONTACT NO.</td>
                                 <td class="style4">
                                     <asp:Label ID="Label10" runat="server"></asp:Label>
                                 </td>
                                 <td>
                                     &nbsp;</td>
                             </tr>
                             <tr>
                                 <td class="style2">
                                     &nbsp;</td>
                                 <td class="style4">
                                     &nbsp;</td>
                                 <td>
                                     &nbsp;</td>
                             </tr>
                             <tr>
                                 <td class="style2">
                                     CAR NO.</td>
                                 <td class="style4">
                                     <asp:Label ID="Label13" runat="server"></asp:Label>
                                 </td>
                                 <td>
                                     &nbsp;</td>
                             </tr>
                             <tr>
                                 <td class="style2">
                                     &nbsp;</td>
                                 <td class="style4">
                                     &nbsp;</td>
                                 <td>
                                     &nbsp;</td>
                             </tr>
                             <tr>
                                 <td class="style2">
                                     DISTANCE</td>
                                 <td class="style4">
                                     <asp:Label ID="Label11" runat="server"></asp:Label>
                                 </td>
                                 <td>
                                     &nbsp;</td>
                             </tr>
                             <tr>
                                 <td class="style2">
                                     &nbsp;</td>
                                 <td class="style4">
                                     &nbsp;</td>
                                 <td>
                                     &nbsp;</td>
                             </tr>
                             <tr>
                                 <td class="style2">
                                     TOTAL AMOUNT</td>
                                 <td class="style4">
                                     <asp:Label ID="Label12" runat="server"></asp:Label>
                                 </td>
                                 <td>
                                     &nbsp;</td>
                             </tr>
                             <tr>
                                 <td class="style2">
                                     &nbsp;</td>
                                 <td class="style4">
                                     &nbsp;</td>
                                 <td>
                                     &nbsp;</td>
                             </tr>
                             <tr>
                                 <td class="style2">
                                     &nbsp;</td>
                                 <td class="style4">
                                     &nbsp;</td>
                                 <td>
                                     &nbsp;</td>
                             </tr>
                             <tr>
                                 <td class="style2">
                                     &nbsp;</td>
                                 <td class="style4">
                                     <asp:Button ID="Button2" runat="server" BackColor="Red" BorderStyle="None" 
                                         Font-Bold="True" Font-Names="Berlin Sans FB Demi" Font-Size="Large" 
                                         ForeColor="White" Height="33px" onclick="Button2_Click" Text="DELETE BOOKING" 
                                         Visible="False" Width="270px" />
                                 </td>
                                 <td>
                                     &nbsp;</td>
                             </tr>
                             <tr>
                                 <td class="style2">
                                     &nbsp;</td>
                                 <td class="style4">
                                     &nbsp;</td>
                                 <td>
                                     &nbsp;</td>
                             </tr>
                         </table>
                         <div>
                         </div>
                     </div>
                 </div>
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
        <div class="newStyle4" style="height: 34px">
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
