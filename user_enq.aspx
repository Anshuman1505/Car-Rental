<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_enq.aspx.cs" Inherits="user_enq" %>


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
        <!-- CUSTOM STYLES-->
    <link href="css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
      <style type="text/css">
          .newStyle1
          {
              font-family: "Copperplate Gothic Bold";
              font-size: large;
              font-weight: bold;
              background-color: #FF0000;
              color: #FFFFFF;
          }
          .newStyle2
          {
              font-family: "Copperplate Gothic Bold";
              font-size: x-large;
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
              width: 191px;
          }
          .style3
          {
              width: 531px;
          }
          .style4
          {
              width: 188px;
          }
          .style5
          {
              width: 253px;
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
font-size: 16px;"> Last access :  
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="LOG OUT" BackColor="Red" 
                onclick="Button1_Click" />
        </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="157px" 
                        ImageUrl="~/img/XUV500.jpg" Width="191px" />
                </p>
                <ul class="nav" id="main-menu">
				
					
                    <li>
                        <a  href="MyTrip.aspx"><i class="fa fa-dashboard fa-3x"></i> MyTrip</a>
                    </li>
                      <li>
                        <a  href="UserProfile.aspx"><i class="fa fa-desktop fa-3x"></i> Profile</a>
                    </li>
                    <li>
                        <a  class="active-menu" href="user_enq.aspx"><i class="fa fa-qrcode fa-3x"></i> Enquiry</a>
                    </li>
						   <li  >
                        <a  href="UserFeedback.aspx"><i class="fa fa-bar-chart-o fa-3x"></i> Feedback</a>
                    </li>	
                      <li  >
                        <a  href="search_car.aspx"><i class="fa fa-table fa-3x"></i> Book Ride</a>
                    </li>
                    
					        <li  >
                        <a  href="Ticket.aspx"><i class="fa fa-square-o fa-3x"></i> Ticket</a>
                    </li>
                     </ul>
               
            </div>
            <div>
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
             <!-- /. PAGE INNER  -->
            <div>
            <div>
            </div>
            <div align="center" class="newStyle2">
                ENQUIRY</div>
                <div>
                    <br />
                </div>
                <div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" 
                        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="4" Width="978px" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    </asp:GridView>
                </div>
                <div>
                    <table class="style1">
                        <tr>
                            <td class="style2">
                                &nbsp;</td>
                            <td class="style3">
                                &nbsp;</td>
                            <td rowspan="14">
                                <asp:Image ID="Image2" runat="server" Height="318px" 
                                    ImageUrl="~/img/inquiry-icon-png-22.png" Width="317px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                &nbsp;</td>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2" style="font-size: medium; font-weight: bold">
                                NAME</td>
                                 <td class="style3">
                                     <asp:TextBox ID="TextBox1" runat="server" Width="492px" Font-Bold="True"></asp:TextBox>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="style2">
                                     &nbsp;</td>
                                 <td class="style3">
                                     &nbsp;</td>
                             </tr>
                             <tr>
                                 <td class="style2" style="font-size: medium; font-weight: bold">
                                     EMAIL ID</td>
                                 <td class="style3">
                                     <asp:TextBox ID="TextBox2" runat="server" Width="489px" Font-Bold="True"></asp:TextBox>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="style2">
                                     &nbsp;</td>
                                 <td class="style3">
                                     &nbsp;</td>
                             </tr>
                             <tr>
                                 <td class="style2" style="font-size: medium; font-weight: bold">
                                     CONTACT NO.</td>
                                 <td class="style3">
                                     <asp:TextBox ID="TextBox3" runat="server" Width="486px" Font-Bold="True"></asp:TextBox>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="style2">
                                     &nbsp;</td>
                                 <td class="style3">
                                     &nbsp;</td>
                             </tr>
                             <tr>
                                 <td class="style2" style="font-size: medium; font-weight: bold">
                                     YOUR QUESTION ?</td>
                                 <td class="style3">
                                     <asp:TextBox ID="TextBox4" runat="server" Width="487px" Font-Bold="True" 
                                         TextMode="MultiLine"></asp:TextBox>
                                     <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" Display="Dynamic" 
                                         ErrorMessage=" *Query cannot be blank"></asp:RequiredFieldValidator>--%>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="style2">
                                     &nbsp;</td>
                                 <td class="style3">
                                     &nbsp;</td>
                             </tr>
                             <tr>
                                 <td class="style2" style="font-size: medium; font-weight: bold">
                                     REPLY FROM ADMIN</td>
                                 <td class="style3">
                                     <asp:Label ID="Label3" runat="server" Font-Bold="True"></asp:Label>
                                 </td>
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
                                     &nbsp;</td>
                             </tr>
                         </table>
                         <div>
                             <table class="style1">
                                 <tr>
                                     <td class="style4">
                                         &nbsp;</td>
                                     <td class="style5">
                                         <asp:Button ID="Button4" runat="server" BackColor="Red" BorderStyle="None" 
                                             Font-Bold="True" Font-Names="Berlin Sans FB Demi" Font-Size="Large" 
                                             ForeColor="White" Height="38px" onclick="Button4_Click" Text="ADD" 
                                             Width="211px" />
&nbsp;</td>
                                     <td>
                                         &nbsp;
                                         <asp:Button ID="Button2" runat="server" BackColor="Red" Font-Bold="True" 
                                             Font-Names="Berlin Sans FB Demi" Font-Size="Larger" ForeColor="White" 
                                             Height="38px" onclick="Button2_Click" Text="SUBMIT" Width="211px" 
                                             BorderStyle="None" />
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:Button ID="Button3" runat="server" BackColor="Red" Font-Bold="True" 
                                             Font-Names="Berlin Sans FB Demi" Font-Size="Larger" ForeColor="White" 
                                             Height="39px" Text="PREVIOUS REPLIES" Width="211px" 
                                             onclick="Button3_Click" BorderStyle="None" />
                                     </td>
                                     <td>
                                         &nbsp;</td>
                                 </tr>
                             </table>
                         </div>
                </div>
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
