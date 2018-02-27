﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllProducts.aspx.cs" Inherits="AllProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <style>
        .myGridClass {
  width: 100%;
  /*this will be the color of the odd row*/
  background-color: #fff;
  margin: 5px 0 10px 0;
  border: solid 1px #525252;
  border-collapse:collapse;
}

/*data elements*/
.myGridClass td {
  padding: 2px;
  border: solid 1px #c1c1c1;
  color: #717171;
}

/*header elements*/
.myGridClass th {
  padding: 4px 2px;
  color: #fff;
  background: #424242;
  border-left: solid 1px #525252;
  font-size: 0.9em;
}

/*his will be the color of even row*/
.myGridClass .myAltRowClass { background: #fcfcfc repeat-x top; }

/*and finally, we style the pager on the bottom*/
.myGridClass .myPagerClass { background: #424242; }

.myGridClass .myPagerClass table { margin: 5px 0; }

.myGridClass .myPagerClass td {
  border-width: 0;
  padding: 0 6px;
  border-left: solid 1px #666;
  font-weight: bold;
  color: #fff;
  line-height: 12px;
}

.myGridClass .myPagerClass a { color: #666; text-decoration: none; }

.myGridClass .myPagerClass a:hover { color: #000; text-decoration: none; } 
    </style>
    <form id="form1" runat="server">
        <div>  
            <asp:GridView CssClass="myGridClass" ID="products" runat="server" OnSelectedIndexChanged = "OnSelectedIndexChanged" AutoGenerateSelectButton="True">  
        </asp:GridView>  
    </div>
    </form>
</body>
</html>
