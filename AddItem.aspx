<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddItem.aspx.cs" Inherits="AddItem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
	<link rel="icon" type="image/png" href="../assets/paper_img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	
	<title>Add Item</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    
    <link href="../bootstrap3/css/bootstrap.css" rel="stylesheet" />
    <link href="../assets/css/ct-paper.css" rel="stylesheet"/>
    <link href="../assets/css/demo.css" rel="stylesheet" /> 
    <link href="../assets/css/examples.css" rel="stylesheet" /> 
        
    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
      
</head>
<body>
    <style>
        .register-card{
            background-color: #3a3837 !important;
        }
        .title{
            color:#7A9E9F !important
        }
    </style>
    <div class="wrapper">
        <div class="register-background"> 
            <div class="filter-black"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1 ">
                            <div class="register-card">
                                <h3 class="title">Welcome</h3>
                                <form class="register-form" runat="server" enctype="multipart/form-data">
                                    <label>Name</label>
                                    <asp:TextBox ID="name" CssClass="form-control" TextMode="SingleLine"  runat="server"></asp:TextBox>

                                    <label>Price</label>
                                    <asp:TextBox ID="price" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                                    <br/>
                                    <input type="file" class="form-control" accept="image/*" id="p_image" name="p_image" />
                                    <br />
                                    <asp:TextBox CssClass="form-control" ID="description" runat="server" Rows="3" TextMode="MultiLine"></asp:TextBox>
                                    <br />
                                    <a href="AllProducts.aspx" class="btn btn-fill btn-block btn-primary">See All Products</a>
                                    <asp:Button CssClass="btn btn-primary btn-block" ID="Button1" runat="server" 
                                     Text="Insert" OnClick="Button1_Click" />
                                </form>
                               
                            </div>
                        </div>
                    </div>
                </div>     
            <div class="footer register-footer text-center">
                    <h6>&copy; 2018 Created by Faseih</h6>
            </div>
        </div>
    </div>      

</body>

<script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="assets/js/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>

<script src="../bootstrap3/js/bootstrap.js" type="text/javascript"></script>

<!--  Plugins -->
<script src="assets/js/ct-paper-checkbox.js"></script>
<script src="assets/js/ct-paper-radio.js"></script>
<script src="assets/js/bootstrap-select.js"></script>
<script src="assets/js/bootstrap-datepicker.js"></script>

<script src="assets/js/ct-paper.js"></script>
</html>
