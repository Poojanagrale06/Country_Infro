<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CountryInfro.Login" ValidateRequest="true" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


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

    <style>
        .modalBackground
        {
            background-color:Black;
            filter:alpha(opacity=90) !important;
            
            z-index:20;
            }
            .modalpopup
            {
                padding:20px 0px 24px 10px;
                position :relative;
                width:450px;
                height:250px;
                background-color: Red;
                border:1px solid black;
            top: 0px;
            left: 0px;
        }
        .auto-style1 {
            width: 100%;
            height: 189px;
        }
    </style>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><br/><br/>
    <h1>f<span>in</span>d my<span> Cou</span>nty l<span>o</span>g<span>in</span> f<span>o</span>rm</h1>
	<div class="wthree-form">
			<h2 style="color:white;">Fill out the form below to login</h2>
		<div class="w3l-login form">
			<form action="#" method="post">
				<div class="form-sub-w3">
                    <asp:TextBox ID="Usertxt" runat="server" Placeholder="Username" style="width:90%;"></asp:TextBox><br/>
                    <asp:RequiredFieldValidator ID="UserValid" runat="server" ErrorMessage="*Please Enter UserName" ControlToValidate="Usertxt" ValidationGroup="login"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="Usertxt"  ValidationExpression="^[\w-\.]{1,}\@([\da-zA-Z-]{1,}\.){1,}[\da-zA-Z-]{2,6}$"></asp:RegularExpressionValidator>
				</div>
				<div class="form-sub-w3">
                    <asp:TextBox ID="Passwordtxt" runat="server" Placeholder="Password" style="width:90%;"></asp:TextBox><br/>
                    <asp:RequiredFieldValidator ID="PasswordVaild" runat="server" ErrorMessage="*Please Enter Password" ValidationGroup="login" ControlToValidate="Passwordtxt"></asp:RequiredFieldValidator>
				</div>
				<label class="anim">
                    <asp:CheckBox ID="chkRememberMe" runat="server" />
					<span>Remember Me</span> 
				</label>
                <%--For Popus Window--%>
				<div class="submit-agileits">
                    <asp:Button ID="Loginbtn" runat="server" Text="Login"  OnClick="Loginbtn_Click" ValidationGroup="login" />
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager> 
                    <asp:Panel ID="Panel1" runat="server" CssClass="modalpopup">
                        <h2 style="text-decoration:solid;">Enter Your Email:</h2>
                        <asp:TextBox ID="TextBox1" runat="server" Placeholder="Enter Email" Height="16px" style="height:20%;"></asp:TextBox>
                        <br />
                        
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Width="95px" />

                        <asp:Label ID="lbmsg" runat="server" Text="Label"></asp:Label>

                    </asp:Panel> 
                    <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Panel1" BackgroundCssClass="modalBackground" TargetControlID="LinkButton1"></asp:ModalPopupExtender>                  
				</div>


                <asp:LinkButton ID="LinkButton1" runat="server" >Forget Password</asp:LinkButton>
                
			 </form>
		</div>
	</div>

		<div class="footer-agileits">
			
		</div>
    
</asp:Content>
