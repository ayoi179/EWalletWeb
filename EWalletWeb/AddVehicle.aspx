<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddVehicle.aspx.cs" Inherits="EWalletWeb.AddVehhicle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #0000FF;
        }
        .auto-style2 {
            width: 678px;
            text-align: right;
        }
        .auto-style3 {
            width: 693px;
            text-align: left;
        }
        .auto-style4 {
            color: #FFFFFF;
            background-color: #0066FF;
        }
        .auto-style5 {
            width: 693px;
            text-align: left;
            margin-left: 40px;
        }
    </style>
</head>
<body style="height: 372px">
    <form id="form1" runat="server">
        <div style="text-align: center; height: 372px">
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
            <h1 class="auto-style1">Add Vehicle</h1>
            <br />
            <br />
            <table style="border:0";>
                <tr>
                    <td class="auto-style2">No Plate</td>
                    <td class="auto-style5"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Colour</td>
                    <td class="auto-style3"><asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="113px">
                <asp:ListItem>Red</asp:ListItem>
                <asp:ListItem>White</asp:ListItem>
                <asp:ListItem>Blue</asp:ListItem>
            </asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style2">Vehicle's Brand</td>
                    <td class="auto-style3"><asp:DropDownList ID="DropDownList2" runat="server" Height="17px" Width="112px">
                <asp:ListItem>Proton</asp:ListItem>
                <asp:ListItem>Perodua</asp:ListItem>
                <asp:ListItem>Lamborghini</asp:ListItem>
            </asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style2">User ID</td>
                    <td class="auto-style3"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
            </table>
   
            <br />
            <br />
         
            <strong>
         
            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="auto-style4" Height="25px" Width="120px" OnClick="Button1_Click1" />
            </strong>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
