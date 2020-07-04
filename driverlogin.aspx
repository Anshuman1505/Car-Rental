<%@ Page Language="C#" AutoEventWireup="true" CodeFile="driverlogin.aspx.cs" Inherits="driverlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 329px;
        }
        .style3
        {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
    
        <br />
    
    </div>
    <div>
        <br />
    </div>
    <div>
        <br />
        <table class="style1">
            <tr align="center">
                <td>
                    &nbsp;</td>
                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="123px" 
                        ImageUrl="~/img/logo.png" PostBackUrl="~/f_page.aspx" Width="225px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <div>
            <br />
        </div>
        <div>
            <br />
        </div>
        <div>
            <table class="style1">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="style2" style="font-weight: bold">
                        DRIVER LOGIN</td>
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
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="style2">
                        <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Font-Bold="True" 
                            Height="31px" Width="330px" placeholder = "DRIVER ID" CssClass="style3"></asp:TextBox>
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
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="style2">
                        <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Font-Bold="True" 
                            Height="30px" Width="330px" placeholder = "PASSWORD" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="style2">
                        <br />
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" 
                        Text="INVALID ID OR PASSWORD" Visible="False"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="style2">
                        <asp:Button ID="Button1" runat="server" BackColor="Blue" BorderStyle="None" 
                            Font-Bold="True" Font-Size="Large" ForeColor="White" Height="30px" Text="LOGIN" 
                            Width="330px" onclick="Button1_Click" />
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
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="style2" align="center">
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/f_page.aspx">Home</asp:LinkButton>
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
    </div>
    </form>
</body>
</html>
