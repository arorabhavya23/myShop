<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="MyAccount" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Account | M Bazaar</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    <style type="text/css">
        .auto-style1 {
            width: 879px;
        }
        .auto-style2 {
            width: 226px;
            text-align: left;
        }
        .auto-style3 {
            width: 379px;
        }
        .auto-style4 {
            width: 226px;
            text-align: left;
            height: 22px;
        }
        .auto-style5 {
            width: 379px;
            height: 22px;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            width: 210px;
        }
        .auto-style8 {
        }
        .auto-style9 {
            width: 337px;
        }
    </style>
    </head><!--/head-->

<body>
    <form id="form1" runat="server">
    
        <div>


	
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> +</a>919874563215</li>
								<li><a href="#"><i class="fa fa-envelope"></i> info@domain.com</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
        <div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href="#"><i class="fa fa-user"></i> Account</a></li>
                                <li><a href="#"><i class="fa fa-star"></i>Wishlist</a></li>
								<li><a href="checkout.html">
                                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/CheckOut.aspx">CheckOut</asp:HyperLink>
                                    </a></li>
								<li><a href="cart.html" class="active">
                                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Cart.aspx">Cart</asp:HyperLink>
                                    </a></li>
								<li><a href="login.html">
                                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink>
                                    </a></li>
							</ul>
						</div>
					</div>
				&nbsp;&nbsp;&nbsp;&nbsp;
									<h1><span>M</span>-BAZAAR</h1>
									<h2>WELCOME TO M-BAZAAR</h2>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="index.html">me</a></li>
								<li class="dropdown"><a href="#">Shop<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="shop.html">Products</a></li>
										<li><a href="product-details.html">Product Details</a></li> 
										<li><a href="checkout.html">Checkout</a></li> 
										<li><a href="cart.html" class="active">Cart</a></li> 
										<li><a href="login.html">Login</a></li> 
                                    </ul>
                                </li> 
								<li class="dropdown"><a href="#">Blog<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="blog.html">Blog List</a></li>
										<li><a href="blog-single.html">Blog Single</a></li>
                                    </ul>
                                </li> 
								<li><a href="404.html">404</a></li>
								<li><a href="contact-us.html">Contact</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search"/></div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->

	<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li>
                      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HomePaget.aspx">Home</asp:HyperLink>
                    </li>
				  <li class="active">My Account&gt;
                      </li>
                    </ol>
                </div>
            </div>
        </section>
            <asp:Panel ID="PanelViewProfile" runat="server">
            
<table class="auto-style1">
            <tr>
                <td class="auto-style2" style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style3">E-Mail Id</td>
                <td class="auto-style3">
                    <asp:Label ID="LblEmailID" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">User Name</td>
                <td class="auto-style3">
                    <asp:Label ID="LblUserName" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">Mobile</td>
                <td class="auto-style3">
                    <asp:Label ID="LblMobile" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">Age</td>
                <td class="auto-style3">
                    <asp:Label ID="LblAge" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">Address</td>
                <td class="auto-style5">
                    <asp:Label ID="LblAddress" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">City</td>
                <td class="auto-style3">
                    <asp:Label ID="LblCity" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">State</td>
                <td class="auto-style3">
                    <asp:Label ID="LblState" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">Pin Code</td>
                <td class="auto-style3">
                    <asp:Label ID="LblPinCode" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BtnEditProfile" runat="server" Text="Edit Profile" OnClick="BtnEditProfile_Click" />
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
                </asp:Panel>
    </div>
        <asp:Panel ID="PanelUpdateProfile" runat="server" Width="880px" Visible="False">
            <table class="auto-style6">
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">E-Mail Id</td>
                    <td>
                        <asp:TextBox ID="TBEmailId" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">User Name</td>
                    <td>
                        <asp:TextBox ID="TBUserName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">Mobile</td>
                    <td>
                        <asp:TextBox ID="TBMobile" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">Age</td>
                    <td>
                        <asp:TextBox ID="TBAge" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">Address</td>
                    <td>
                        <asp:TextBox ID="TBAddress" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">City</td>
                    <td>
                        <asp:TextBox ID="TBCity" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">State</td>
                    <td>
                        <asp:TextBox ID="TBState" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">Pin Code</td>
                    <td>
                        <asp:TextBox ID="TBPinCode" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8" colspan="2">
                        <br />
                        &nbsp;&nbsp;
                        <asp:Button ID="BtnUpdateProfile" runat="server" Text="Update Profile" OnClick="BtnUpdateProfile_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="LblMessage" runat="server" ForeColor="#66FF66" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <footer id="footer"><!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="companyinfo">
							<h2 class="auto-style2" style="font-size: xx-large">M-BAZAAR   <h2 class="auto-style1">SAB KUCH WHOLESALE RATE PAR</h2>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="address">
							&nbsp;</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="footer-widget">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Service</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Online Help</a></li>
								<li><a href="">Contact Us</a></li>
								<li><a href="">Order Status</a></li>
								<li><a href="">Change Location</a></li>
								<li><a href="">FAQ’s</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Quock Shop</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">T-Shirt</a></li>
								<li><a href="">Mens</a></li>
								<li><a href="">Womens</a></li>
								<li><a href="">Gift Cards</a></li>
								<li><a href="">Shoes</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Policies</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Terms of Use</a></li>
								<li><a href="">Privecy Policy</a></li>
								<li><a href="">Refund Policy</a></li>
								<li><a href="">Billing System</a></li>
								<li><a href="">Ticket System</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>About Shopper</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Company Information</a></li>
								<li><a href="">Careers</a></li>
								<li><a href="">Store Location</a></li>
								<li><a href="">Affillate Program</a></li>
								<li><a href="">Copyright</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3 col-sm-offset-1">
						<div class="single-widget">
							<h2>About Shopper</h2>
								<input type="text" placeholder="Your email address" />
								<button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
								<p>Get the most recent updates from <br />our site and be updated your self...</p>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright © 2013 M Bazaar Inc. All rights reserved.</p>
					
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
    </form>
</body>
    

</html>
