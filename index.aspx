<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="scripts/jquery-3.3.1.min.js"></script>
</head>
<body>
    <h2>Welcome to website Staff Section</h2>
    <h3>Order List</h3>

    <asp:Table ID="orders_table" runat="server" Height="33px" Width="731px">
        <asp:TableHeaderRow>
            <asp:TableCell runat="server">ID</asp:TableCell>
            <asp:TableCell runat="server">Name</asp:TableCell>
            <asp:TableCell runat="server">Status</asp:TableCell>
            <asp:TableCell runat="server">Time</asp:TableCell>
            <asp:TableCell runat="server">Total</asp:TableCell>
            <asp:TableCell runat="server">Action</asp:TableCell>
        </asp:TableHeaderRow>
    </asp:Table>

    <script src="scripts/main.js"></script>
</body>
</html>

