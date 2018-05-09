<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CountryInfro.Register" EnableEventValidation="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="food court login form a Flat Responsive Widget,Login form widgets, Sign up Web 	forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<link href="Assets/Css/Login.css" rel="stylesheet" type="text/css" media="all" />
<!--online fonts-->
<link href="//fonts.googleapis.com/css?family=Lobster&amp;subset=cyrillic,latin-ext,vietnamese" rel="stylesheet"/>
<link href="//fonts.googleapis.com/css?family=Righteous&amp;subset=latin-ext" rel="stylesheet"/>
<!--//online fonts-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><br/><br/>

    <h1>W<span>el</span>come<span> To</span> Find<span> M</span>y<span> Cou</span>n<span>t</span>ry</h1>
	<div class="wthree-form">
			<h2 style="color:white;">Registration Form</h2>
		<div class="w3l-login form">
			<form action="#" method="post" >

				<div class="form-sub-w3">
                    <asp:TextBox ID="RUsertxt" runat="server" Placeholder="Username" style="width:90%;" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Username" ControlToValidate="RUsertxt" ValidationGroup="Regi"></asp:RequiredFieldValidator>
				</div>

				<div class="form-sub-w3">
                    <asp:TextBox ID="RPasswordtxt" runat="server" Placeholder="Password" style="width:90%;" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ControlToValidate="RPasswordtxt" ValidationGroup="Regi"></asp:RequiredFieldValidator>

				</div>

				<div class="form-sub-w3">
                    <asp:TextBox ID="CPasswordtxt" runat="server" Placeholder="Conform Password" style="width:90%;"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="CPasswordtxt"></asp:RegularExpressionValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Valid Password" ControlToValidate="CPasswordtxt"   ControlToCompare="RPasswordtxt"></asp:CompareValidator>
				</div>

				<div class="submit-agileits">
                    <asp:Button ID="Regibtn" runat="server" Text="Register" OnClick="Regibtn_Click" ValidationGroup="Regi" />
				</div>
					
			 </form>
		</div>
	</div>
		<div class="footer-agileits">
			
		</div>
</asp:Content>
