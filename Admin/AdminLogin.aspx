<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="CountryInfro.Admin.AdminLogin" ValidateRequest="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Blend  Login Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="Assets/css/Astyle.css" rel="stylesheet" type="text/css" media="all" />
<link href="Assets/css/font-awesome.css" rel="stylesheet"/> <!-- Font-Awesome-Icons-CSS -->

<!-- //Custom Theme files -->
<!-- web font --> 
<link href="//Admin/Assets/fonts.googleapis.com/css?family=Vollkorn+SC:400,600,700,900&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese" rel="stylesheet"/>
<link href="//Admin/Assets/fonts.googleapis.com/css?family=Acme" rel="stylesheet" /> 
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
		<h1 style="color:white;">Admin Login Form</h1>
		<div class="main-w3lsrow">
			<!-- login form -->
			<div class="login-form login-form-left"> 
				<div class="agile-row">
					<h2>Login Here</h2> 
					<div class="login-agileits-top"> 	
						<form action="#" method="post"> 
							<p>User Name </p>
                            <asp:TextBox ID="Admintxt" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter UserName" ControlToValidate="Admintxt" ValidationGroup="log" style="color:white;"></asp:RequiredFieldValidator>
							<p>Password</p>
                            <asp:TextBox ID="Passtxt" runat="server"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="Passtxt" ValidationGroup="log" style="color:white;"></asp:RequiredFieldValidator> 
							  
                            <asp:Button ID="Aloginbtn" type="sumbit" runat="server" Text="Login"  OnClick="Aloginbtn_Click" ValidationGroup="log"/>
						</form> 	
					</div> 
					<div class="login-agileits-bottom"> 
						<h6><a href="#">Forgot password?</a></h6>
					</div> 
					 
				

				</div>  
			</div>  
		</div>	
		 
	</div>	
</asp:Content>
