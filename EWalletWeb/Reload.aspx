<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reload.aspx.cs" Inherits="EWalletWeb.Reload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            color: #000000;
            width: 678px;
            text-align: right;
        }
        .auto-style3 {
            width: 693px;
            text-align: left;
        }
        .auto-style5 {
            color: #FFFFFF;
            background-color: #0066FF;
        }
        .auto-style6 {
            text-align: center;
            color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
        <div class="auto-style1">
            <br />
            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/RegisterPage.aspx">Sign Up</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Login.aspx">Login</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/AddVehicle.aspx">Vehicle</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/AddParking.aspx">Parking</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/BookingFacility.aspx">Booking</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/Reload.aspx">Reload</asp:LinkButton>
            <br />
            <br />
            <br />
            <h1 class="auto-style6">Reload</h1>
            
            <br />
            <br />
                <table style="border:0";>
                <tr>
                    <td class="auto-style2"><strong>Amount</strong></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="186px"></asp:TextBox>
                    </td>
                </tr>
                   <tr>
                    <td class="auto-style2"><strong>Email</strong></td>
                    <td class="auto-style3"> <asp:TextBox ID="TextBox3" runat="server" Height="17px" Width="186px"></asp:TextBox></td>
                </tr>
                    <tr>
                    <td class="auto-style2"><strong>Name</strong></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="185px"></asp:TextBox>
                    </td>
                </tr>
                    <tr>
                    <td class="auto-style2"><strong>Phone Number</strong></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox4" runat="server" Height="22px" Width="186px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>Bank</strong></td>
                    <td class="auto-style3"><asp:ListBox ID="ListBox3" runat="server" Height="49px" Width="200px"></asp:ListBox></td>
                </tr>
                
            </table>

            
        </div>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" Width="120px" CssClass="auto-style5" />
        </div>
    </form>
</body>
</html>
