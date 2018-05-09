<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CountryInfro.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <%--<div id="preloader"></div>--%>
    <section id="hero">
    <div class="hero-container">
      <div class="wow fadeIn">
        <div class="hero-logo">
          <img class="" src="img/logo.png" alt=""/>
        </div>

        <h1>Welcome to Country studios</h1>
        <h2>We Are <span class="rotating">beautiful graphics, functional websites, working mobile apps</span></h2>
        <div class="actions">
          <a href="Register.aspx" class="btn-get-started">Register</a>
          <a href="Login.aspx" class="btn-services">Login</a>
        </div>
      </div>
    </div>
  </section>

</asp:Content>
