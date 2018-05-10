<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Fav.aspx.cs" Inherits="CountryInfro.Fav" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><br/><br/>
    <div class="container">
        <asp:Label ID="UserName" runat="server" Text="Label"></asp:Label>
     <div class="member" style="background-color:black; width:20%; height:150px; opacity:0.8;">
         <asp:Label ID="Labfav" runat="server" Text="Label" style="color:Black; font-size:20px; text-decoration:solid"></asp:Label>          
            
          </div>
        </div>
    <br/><br/>
</asp:Content>
