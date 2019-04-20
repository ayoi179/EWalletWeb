<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddParking.aspx.cs" Inherits="EWalletWeb.AddParking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            color: #0000FF;
        }
        .auto-style4 {
            width: 678px;
            text-align: left;
        }
        .auto-style5 {
            width: 693px;
            text-align: right;
        }
        .auto-style6 {
            color: #FFFFFF;
            background-color: #0066FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
            <h1 class="auto-style2">Add Parking</h1>
            <br />
            <table>
                <tr>
                    <td class="auto-style5"><strong>Balance</strong></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" Width="136px" Enabled="False" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>Plate Number</strong></td>
                    <td class="auto-style4">
                        <asp:ListBox ID="ListBox1" runat="server" Height="56px" Width="208px"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>Vehicle</strong></td>
                    <td class="auto-style4">
                        <asp:ListBox ID="ListBox2" runat="server" Height="56px" Width="207px"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>Date</strong></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server" Width="197px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>Zone</strong></td>
                    <td class="auto-style4">
                        <asp:ListBox ID="ListBox3" runat="server" Height="54px" Width="205px"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>Time</strong></td>
                    <td class="auto-style4">
                        <asp:ListBox ID="ListBox4" runat="server" Height="39px" Width="202px"></asp:ListBox>
                    </td>
                </tr>
            </table>
            <br />

            <asp:Button ID="Button1" runat="server" Text="Submit" Height="25px" Width="123px" CssClass="auto-style6" OnClick="Button1_Click" />
        </div>
        
    </form>
</body>
</html>
