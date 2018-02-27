<%@ Page Title="CENTRAL PERK" Language="C#" MasterPageFile="~/RestaurantSite.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
    <div>
        
        <div class="welcome"><center>Welcome To CENTRAL PERK</center></div>
        
            
            <center>
            <div class="sideLogin">
                <br /><br /><br />
                <br /><br /><br />
                <br /><br /><br />
                <br /><br /><br />
                
                <center><p>Login here!</p></center>
                <br /><br /><br />
                <table>
                    <tr>
                        <td>ENTER YOUR USERNAME DEAR!
                        </td>
                        <td style="width: 140px">
                            <asp:TextBox ID="txtUserName" runat="server" CssClass="textLogin" />
                        </td>
                        <td style="font-size: 11px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Name" ControlToValidate="txtUserName" ForeColor="#990000"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>Password PLS!
                        </td>
                        <td>
                            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="textLogin" />
                        </td>
                        <td style="font-size: 11px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Password" ControlToValidate="txtPassword" ForeColor="#990000" CssClass="font"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="2">
                            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="button" OnClick="btnLogin_Click" />&nbsp;&nbsp;
                            <br />
                            <br />
                            <p>Or</p>
                            <asp:LinkButton ID="lnkRegister" runat="server" Text="New Registration" PostBackUrl="~/Registration.aspx" CausesValidation="False" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="2">
                            <asp:Label ID="lblResult" runat="server" />
                        </td>
                    </tr>
                </table>
                <br />
               </center>
            </div>
                </center>
            <br />

        </div>

        
   
    <style>body {
    background-color: aquamarine;
    margin: 0px;
    padding: 0px;
    font-family: Calibri;
    font-size: 14px;
    color: #000000;
    font-family:Broadway;
}

h1 {
    padding: 5px 0 5px 0;
    margin: 0px;
    font-size: 18px;
    color: #FFFFFF;
    font-family:Broadway;
}

h2 {
    padding: 5px 0 5px 0;
    margin: 0px;
    font-size: 18px;
    color: #4a4947;
    background-color: #FFFFFF;
    
    font-family:Broadway;
}

h3 {
    padding: 0 0 5px 0;
    margin: 0px;
    font-size: 12px;
    color: #59cef9;
    font-family:Broadway;
}

h4 {
    padding: 0 0 10px 0;
    margin: 0px;
    font-size: 14px;
    color: #7ea743;
    font-family:Broadway;
}

p {
    text-align: justify;
    padding: 2px 0 2px 0;
    margin: 0px;
    line-height: 15px;
    font-family:Broadway;
}

.container {
    width: 900px;
    height: 1100px;
    margin: auto;
    background-color:white;
    font-family:Broadway;
}

.divbody {
    width: auto;
    margin: 0px 0px;
    font-family:Broadway;
}

.header {
    width: auto;
    height: 79px;
    background-color: #FFFFFF;
    font-family:Broadway;
}

.logo {
    width: 200px;
    float: left;
}

.logintxtU {
    height: 20px;
    font-family:Broadway;
}

.cartpanel {
    vertical-align: top;
    margin-top: 23px;
    margin-right: 5px;
    height: 20px;
    width: 475px;
    float: right;
    font-size: 16px;
    font-family:Broadway;
}

    .cartpanel a {
        vertical-align: top;
        color: black;
        font-weight: 300;
        text-decoration: none;
        font-family:Broadway;
    }

        .cartpanel a:hover {
            color: cornflowerblue;
            font-family:Broadway;
        }



.button {
    border-style: none;
    border-color: inherit;
    border-width: medium;
    color: white;
    background-color: cornflowerblue;
    cursor: pointer;
    margin-left: 0px;
    font-family:Broadway;
}

    .button:hover {
        background-color:aquamarine;
        font-family:Broadway;
    }


.signin {
    border: none;
    color: white;
    height: 31px;
    background-color: aquamarine;
    margin-top: -3px;
    margin-right: -1px;
    cursor: pointer;
    font-family:Broadway;
}

    .signin:hover {
        background-color:cornflowerblue;
        font-family:Broadway;
    }

.textLogin {
    width: 130px;
    font-family:Broadway;
}

.sideLogin {
    width: 1000px;
    height: 400px;
    
    font-size: 20px;
    /*background-color:#ededed;*/
    font-family:Broadway;
    
}

    .sideLogin a {
        font-size: 16px;
        text-decoration: none;
        color: black;
        font-family:Broadway;
    }

        .sideLogin a:hover {
            color: aquamarine;
        }

.contact_information {
    width: 300px;
    background: url('/Images/left_content_bg.gif') repeat-x top;
    float: left;
}

.lblresponse {
    font-size: 16px !important;
    color: aquamarine;
    font-family:Broadway;
}

.cancel {
    font-weight: bold;
    color: black;
    text-decoration: none;
    font-family:Broadway;
}

    .cancel:hover {
        color: aquamarine;
        font-family:Broadway;
    }

.icon {
    width: 30px;
    height: 25px;
}

.call {
    padding-left: 15px;
    padding-top: 10px;
}

.welcome {
    width: 900px;
    background-color:aqua;
    color: #FFFFFF;
    font-size: 40px;
    border: none;
    font-family:Broadway;
    padding-left: 0px;
}

.bodyImages {
    float: right;
    width: 1000px;
}

.orderDetails a {
    text-decoration: none;
    color: black;
    font-weight: bold;
    font-family:Broadway;
}

    .orderDetails a:hover {
        color: aquamarine;
        font-family:Broadway;
    }

.textBox {
    width: 749px;
    height: 25px;
    font-family:Broadway;
}

.searchbutton {
    border: none;
    color: white;
    height: 31px;
    width: 100px;
    margin-left: -3px;
    background-color:aquamarine;
    cursor: pointer;
    font-family:Broadway;
}
/*----------------------Footer---------------------------------*/
#footer {
    clear: both;
    width: auto;
    height: 37px;
    color: #808080;
    background-color: aquamarine;
}

.copyright {
    float: left;
    padding-left: 10px;
    padding-top: 10px;
}

.footer_links {
    float: right;
    padding-right: 15px;
    padding-top: 13px;
}

    .footer_links a {
        text-decoration: none;
        color: #D7DFE2;
        padding-left: 10px;
    }

        .footer_links a:hover {
            text-decoration: none;
            color: #fff;
        }

fieldset {
    border: 2px solid aquamarine;
    border-radius: 4px 4px;
    padding: 10px 10px;
    margin: 0px 10px;
}

    fieldset .sub {
        width: 383px;
    }

legend {
    font-size: 16px;
}

.fieldsetmain {
    border: 2px solid #808080;
    border-radius: 4px 4px;
    padding: 10px 10px;
    margin: 10px 10px;
    min-height: 450px;
}
.fieldsetmainadmin {
    border: 2px solid #808080;
    border-radius: 4px 4px;
    padding: 10px 10px;
    margin: 10px 10px;
    min-height: 450px;
    overflow:auto;
}
/*---------ADMIN STYLE-------------*/
.adminHead {
    background-color: #851010;
    height: 25px;
    color: white;
    font-family: Calibri;
}

.adminContainer {
    width: 1100px;
    height: auto;
    margin: 5px auto;
    min-height: 650px;
    border: 3px double #4a4947;
    background-color: #FFFFFF;
}

.adminBody {
    width: 100%;
    margin: 0px;
}

.lText {
    font-size: 20px;
    float: left;
}

.info {
    float: right;
    display: block;
    margin-top: 3px;
    margin-right: 2px;
}

    .info a {
        color: white;
        text-decoration: none;
    }

        .info a:hover {
            color: #f1f1f1;
            text-decoration: none;
        }

.adminMenu {
    width: 196px;
    background-color: #e9e9e9;
    margin-top: 9px;
    margin-left: 4px;
    height: 612px;
    border: 0px #d4d4d4 solid;
    border-radius: 4px 4px;
    float: right;
}

    .adminMenu .menu {
        color: black;
    }

        .adminMenu .menu a:hover {
            color: #851010;
        }

    .adminMenu .selected {
        background-color: #d8d8d8;
        padding: 0px 1px;
        border: 1px solid black;
        color: #851010;
    }

        .adminMenu .selected a:active {
            background-color: #d8d8d8;
            padding: 0px 1px;
            border: 1px solid black;
            color: #851010;
        }

.adminContent {
    float: right;
    width: 900px;
    height: 625px;
    overflow-x: auto;
    overflow-y: auto;
}

    .adminContent fieldset {
        border: 2px solid #808080;
        border-radius: 4px 4px;
        padding: 10px 10px;
        margin: 0px 4px !important;
        min-height: 597px;
    }
    .adminContent .fieldsetsub {
        border: 2px solid #808080;
        border-radius: 4px 4px;
        padding: 10px 10px;
        margin: 0px 4px !important;
        min-height:30px !important;
        width:450px;
    }
/*---------ADMIN STYLE END-------------*/
</style>
</asp:Content>

