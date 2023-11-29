<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusTicketing.aspx.cs" Inherits="Practical3.BusTicketing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 88px;
        }
        .auto-style2 {
            width: 14px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ABC BUS ONLINE BOOKING &amp; TICKETING SYSTEM<br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblTime" runat="server"></asp:Label>
        </div>
        <p>
&nbsp;&nbsp;
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Departure Date&nbsp;&nbsp; </td>
                    <td class="auto-style2">:</td>
                    <td>
                        <asp:Calendar ID="calDepartDt" runat="server" OnSelectionChanged="calDepartDt_SelectionChanged"></asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtDepartDt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Adult</td>
                    <td class="auto-style2">:</td>
                    <td>
                        <asp:TextBox ID="txtAdult" runat="server" Width="45px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Child</td>
                    <td class="auto-style2">:</td>
                    <td>
                        <asp:TextBox ID="txtChild" runat="server" Width="43px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">From</td>
                    <td class="auto-style2">:</td>
                    <td>
                        <asp:DropDownList ID="ddlFrom" runat="server">
                            <asp:ListItem>-Select Origin-</asp:ListItem>
                            <asp:ListItem>Hentian Duta</asp:ListItem>
                            <asp:ListItem>Hentian Putra</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Destination</td>
                    <td class="auto-style2">:</td>
                    <td>
                        <asp:DropDownList ID="ddlTo" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged">
                            <asp:ListItem>-Select Destination-</asp:ListItem>
                            <asp:ListItem>Butterworth</asp:ListItem>
                            <asp:ListItem>Seremban</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Ticket Price</td>
                    <td class="auto-style2">:</td>
                    <td>
                        <asp:TextBox ID="txtPrice" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
            <asp:Label ID="lblError" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
            <asp:Button ID="btnBookTkt" runat="server" Height="25px" OnClick="Button1_Click" Text="Book Ticket" />
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="txtCancel" runat="server" CssClass="auto-style3" OnClick="btnCancel_click_Click" Text="Cancel" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
