<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login | M Bazaar</title>
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
            font-size: small;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            font-size: medium;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 136px;
        }
        .auto-style6 {
            width: 109px;
        }
    </style>
</head><!--/head-->

<body>
    <br />
	<form id="form1" runat="server">
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
                               <br />
								<li><a href="#"><i class="fa fa-phone"></i> +</a>919874563215</li>
								<li><a href=""><i class="fa fa-envelope"></i> info@domain.com</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href="#">Account</a></li>
								<li><a href="#"><i class="fa fa-star"></i> Wishlist</a></li>
								<li>
                                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/CheckOut.aspx">CheckOut</asp:HyperLink>
                                </li>
								<li>
                                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Cart.aspx">Cart</asp:HyperLink>
                                </li>
								<li>
                                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/login.aspx">Login</asp:HyperLink>
                                </li>
							</ul>
						</div>
					</div>
		
		<div class="header-middle">
            <div class="container">
				<div class="row">
									<h1><span>M</span>-BAZAAR</h1>
									<h2>WELCOME TO M-BAZAAR</h2>
				</div>
			</div>
		</div><!--/header-middle-->
	
				</div>
			</div>
		</div><!--/header-middle-->
	
		<!--/header-bottom-->
	</header><!--/header-->
	
	<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Login to your account</h2>
                        <span class="auto-style3"><strong>&nbsp;&nbsp;&nbsp; </strong> </span>
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style5">Email<span class="auto-style3"> Id<strong>&nbsp;&nbsp;</strong></span></td>
                                <td><asp:TextBox ID="TBUsrID" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Password</td>
                                <td><asp:TextBox ID="TBPass" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <span class="auto-style3"><strong> </strong></span>&nbsp;<span><input type="checkbox" class="checkbox"> 
								Keep me signed in
							</span>
                        <asp:Button ID="BtnLogIn" runat="server" OnClick="BtnLogIn_Click" Text="LogIn" />
&nbsp;<asp:Label ID="LabelError" runat="server" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
					&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/ForgotPassword.aspx">ForgotPassword</asp:HyperLink>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">OR</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>New User Signup!<asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                        </h2>
                        
					<table class="auto-style4">
                            <tr>
                                <td class="auto-style6">Email ID</td>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <asp:TextBox ID="TBEmailID" runat="server" AutoPostBack="True" OnTextChanged="TBEmailID_TextChanged"></asp:TextBox>
                                            <asp:Label ID="LabelEmail" runat="server" Text="Email ID Already Registred" ForeColor="Red" Visible="False"></asp:Label>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">User Name</td>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                            <asp:TextBox ID="TBUserIDNew" runat="server" AutoPostBack="True"></asp:TextBox>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">Password</td>
                        <td><asp:TextBox ID="TBPassNew" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                                </tr>
                        <tr><td>&nbsp;&nbsp;<asp:Button ID="BtnSignUp" runat="server" OnClick="BtnSignUp_Click" Text="Sign Up" />
                            <td>&nbsp;
                        <asp:Label ID="LabelRegister" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
</td>
                        </tr>
							
					    
							</table>
                    </div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
	
	
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
	

  
    <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
    </form>
</body>
</html>