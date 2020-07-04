<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search_car.aspx.cs" Inherits="search_car" %>



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
   
        <!-- CUSTOM STYLES-->
    <link href="css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
     <!-- TABLE STYLES-->
    <link href="js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
      <style type="text/css">
          .newStyle1
          {
              font-family: "Berlin Sans FB Demi";
              background-color: #FF0000;
              font-weight: bold;
              font-size: large;
              color: #FFFFFF;
          }
          .style1
          {
              width: 100%;
          }
          .style2
          {
              width: 252px;
          }
          .style3
          {
              width: 414px;
          }
          .style4
          {
              width: 70px;
          }
          .style5
          {
              width: 227px;
          }
          .newStyle2
          {
              font-family: "Berlin Sans FB Demi";
              font-size: medium;
              font-weight: bold;
              color: #FFFFFF;
              background-color: #FF0000;
          }
          .style6
          {
              width: 158px;
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
font-size: 16px;"> Last access :&nbsp;
      <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
      &nbsp;&nbsp;
      <asp:Button ID="Button1" runat="server" BackColor="Red" onclick="Button1_Click" 
          Text="LOG OUT" />
        </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="156px" Width="189px" />
                </p>
                <ul class="nav" id="main-menu">
				
					
                    <li>
                        <a  href="MyTrip.aspx"><i class="fa fa-dashboard fa-3x"></i> MyTrips</a>
                    </li>
                   <li>
                        <a  href="UserProfile.aspx"><i class="fa fa-desktop fa-3x"></i> Profile</a>
                    </li>
                    <li>
                        <a  href="user_enq.aspx"><i class="fa fa-qrcode fa-3x"></i> Enquiry</a>
                    </li>
						   <li  >
                        <a  href="UserFeedback.aspx"><i class="fa fa-bar-chart-o fa-3x"></i> Feedback</a>
                    </li>	
                      <li  >
                        <a class="active-menu"  href="search_car.aspx"><i class="fa fa-table fa-3x"></i>Book Ride</a>
                    </li>
                     <li  >
                        <a  href="Ticket.aspx"><i class="fa fa-square-o fa-3x"></i> Ticket</a>
                    </li>			
					
					                   
                    
                  	
                </ul>
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                </div>
                 <!-- /. ROW  -->
               
            <div class="newStyle1" align="center">
                SELECT YOUR CAR</div>
                <!-- /. ROW  -->
                <!-- /. ROW  -->
            <div class="row">
            </div>
                <!-- /. ROW  -->
            <div class="row">
                <table class="style1">
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Button ID="Button2" runat="server" BackColor="Red" BorderStyle="None" 
                                        Font-Bold="True" Font-Size="Medium" ForeColor="White" onclick="Button2_Click" 
                                        Text="HATCHBACK" Width="254px" />
                                </td>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style3">
                                    <asp:Button ID="Button3" runat="server" BackColor="Red" BorderStyle="None" 
                                        Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="SEDAN" 
                                        Width="252px" onclick="Button3_Click" />
                                </td>
                                <td class="style4">
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="Button4" runat="server" BackColor="Red" BorderStyle="None" 
                                        Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="SUV" 
                                        Width="252px" onclick="Button4_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                                <td class="style4">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Image ID="Image2" runat="server" Height="156px" 
                                        ImageUrl="~/img/2012-Hyundai-i20.jpg" Width="255px" />
                                </td>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style3">
                                    <asp:Image ID="Image3" runat="server" Height="144px" 
                                        ImageUrl="~/img/Tata-Manza.jpg" Width="255px" />
                                </td>
                                <td class="style4">
                                    &nbsp;</td>
                                <td>
                                    <asp:Image ID="Image4" runat="server" Height="150px" 
                                        ImageUrl="~/img/2008-Toyota-Fortuner-Cheap-Car-Rentals-01.jpg" Width="256px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                                <td class="style4">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                                <td class="style4">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Button ID="Button5" runat="server" BackColor="Red" BorderStyle="None" 
                                        Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="VAN" 
                                        Width="252px" onclick="Button5_Click" />
                                </td>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style3">
                                    <asp:Button ID="Button6" runat="server" BackColor="Red" Font-Bold="True" 
                                        Font-Size="Medium" ForeColor="White" Text="LUXURY" Width="252px" />
                                </td>
                                <td class="style4">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                                <td class="style4">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Image ID="Image5" runat="server" Height="156px" 
                                        ImageUrl="~/img/Maruti-Omni.jpg" Width="255px" />
                                </td>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style3">
                                    <asp:Image ID="Image6" runat="server" Height="156px" Width="255px" 
                                        ImageUrl="~/img/images.jpe" />
                                </td>
                                <td class="style4">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <div>
                        </div>
                        <div>
                        </div>
                        <div align="center" class="newStyle2" 
                        style="font-family: 'Berlin Sans FB Demi'; font-size: large; font-weight: bold; color: #FFFFFF; background-color: #FF0000">
                            MORE CARS</div>
                        <div>
                            <br />
                        </div>
                        <div>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" 
                                CellPadding="4" Width="1023px" ForeColor="#333333" GridLines="None" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged1">
                                <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                <Columns>
                                    <asp:TemplateField HeaderText="IMAGE">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" runat="server" Height="107px" 
                                                ImageUrl='<%# Eval("img") %>' Width="123px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <AlternatingRowStyle BackColor="White" />
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
                                    <td class="style6">
                                        <asp:Button ID="Button7" runat="server" BackColor="Red" BorderStyle="None" 
                                            Font-Bold="True" Font-Names="Berlin Sans FB Demi" Font-Size="Large" 
                                            ForeColor="White" Height="28px" onclick="Button7_Click" Text="MORE DETAILS" 
                                            Width="177px" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </div>
            </div>
                <!-- /. ROW  -->
        </div>
               
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="js/jquery.metisMenu.js"></script>
     <!-- DATA TABLE SCRIPTS -->
    <script src="js/dataTables/jquery.dataTables.js"></script>
    <script src="js/dataTables/dataTables.bootstrap.js"></script>
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
    </script>
         <!-- CUSTOM SCRIPTS -->
    <script src="js/custom.js"></script>
    
   
</form>
    
   
</body>
</html>
