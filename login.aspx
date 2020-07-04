<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    
</head>
<body>
 <style type="text/css">
        .newStyle1
        {
            background-color: #fdc903;
            font-size: large;
        }
        .style1
        {
            width: 100%;
         height: 69px;
     }
        .newStyle2
        {
            background-color: #fdc903;
            font-size: x-large;
        }
        .newStyle3
        {
            background-color: #fdc903;
            font-size: xx-large;
        }
     .newStyle4
     {
         background-color: #4a4a4a;
     }
     .newStyle5
     {
         background-color: #e5e5e7;
     }
     .newStyle6
     {
         font-size: x-large;
         background-color: #e5e5e7;
         font-weight: bold;
     }
     .style2
     {
         width: 408px;
     }
     .style3
     {
         width: 100%;
         height: 24px;
     }
     .style5
     {
         width: 426px;
     }
     .style6
     {
         margin-left: 36px;
     }
    </style>
    <form id="form1" runat="server">
    <div>
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    <div>
    </div>
    <div>
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td align="center">
                    <asp:Image ID="Image1" runat="server" Height="123px" ImageUrl="~/img/logo.png" 
                        Width="225px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    <div>
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2" style="font-weight: bold">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2" style="font-weight: bold">
                    PLEASE SIGN IN HERE</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" 
                        BorderStyle="Solid" Height="36px" Width="407px" 
                        placeholder = "EMAIL ID OR CONTACT NO." Font-Bold="True" Font-Size="Large"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" 
                        BorderStyle="Solid" Height="36px" TextMode="Password" Width="407px" 
                        placeholder="PASSWORD" Font-Bold="True" Font-Size="Large" ></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" 
                        Text="INVALID USERNAME OR PASSWORD" Visible="False"></asp:Label>
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        PostBackUrl="~/forgotpassword.aspx">FORGET PASSWORD ???</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
                        PostBackUrl="~/f_page.aspx">HOME PAGE</asp:LinkButton>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" BackColor="#3366FF" BorderStyle="None" 
                        Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="37px" 
                        Text="LOG IN" Width="407px" onclick="Button1_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        
    </div>
    <div>
        <table class="style3">
            <tr>
                <td align="right" class="style5">
                    <asp:Image ID="Image2" runat="server" Height="36px" 
                        ImageUrl="~/img/icon-user-default.png" />
                </td>
                <td class="style2">
                    <asp:Button ID="Button2" runat="server" BackColor="#FDC903" CssClass="style6" 
                        Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="37px" 
                        onclick="Button2_Click" Text="NEW USER" Width="407px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    
    </form>
</body>
</html>
