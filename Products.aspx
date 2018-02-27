<%@ Page Title="" Language="C#" MasterPageFile="~/RestaurantSite.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" EnableEventValidation="false" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br /><br /><br />
    <br /><br /><br />
    <br /><br /><br />
    <br /><br /><br />
    <br /><br /><br />
    <div style="float: left; width: 120px">
        <fieldset >
            <legend style="font-size: 20px;">Menu Items</legend>
            <div style="height:30px;" align="center">
                <asp:Label ID="lblMessage" runat="server" CssClass="lblresponse" />
            </div>
            <asp:DataList runat="server" ID="gvProduct" RepeatDirection="Horizontal" RepeatColumns="4" OnSelectedIndexChanged="gvProduct_SelectedIndexChanged">
                <ItemTemplate>
                    <asp:Label Visible="false" ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
                    <br />

                    <asp:Label ID="TypeIdLabel" runat="server" Text='<%# Eval("CategoryId") %>' Visible="false" />
                    <br />
                    <table>
                        <tr>
                            <td style="border-style:groove; border-width: 1px;">
                                <asp:Image ID="imgPd" CssClass="imgclass" runat="server" ImageUrl='<%#"~/Images/"+Eval("ImageUrl").ToString() %>' /><br />
                                <br />
                                Menu Item:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                                <br />
                         
                                Description:
            <asp:Label ID="DiscriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                                <br />
                                Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%#"Rs."+ Eval("Price") %>' />
                                <br />
                                              Enter The Quantity:&nbsp;
            <asp:TextBox ID="txtQty" runat="server" Width="30" Height="10" Text="1" style="text-align:center" />
             <br />
                                              
                    
                                <center>
                                    <br />
            <asp:Button ID="btnAddToCart" runat="server" Text="Add" autopostback="true" CssClass="button" onClick="btnAddToCart_Click" causesvalidation="true"/></center>
            
                            </td>

                        </tr>

                    </table>
                </ItemTemplate>



            </asp:DataList>
        </fieldset>
    </div>
    <style>body {
    background-color: white;
    margin: 0px;
    padding: 0px;
    font-family: Calibri;
    font-size: 14px;
    color: #000000;
    font-family:Broadway;
}
</style>
</asp:Content>

