<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home1.aspx.cs" Inherits="CountryInfro.Home1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    input[type=text] {
    width: 80%;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    
    
}

input[type=text]:focus {
    width: 100%;
}
</style>
</asp:Content >
   
        



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/><br/>
    <div class="container">
  
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:TextBox ID="Auto_Search" runat="server" placeholder="Type Country Name" OnTextChanged="Page_Load" ></asp:TextBox>
        <asp:AutoCompleteExtender ID="TextBox1_AutoCompleteExtender" runat="server" DelimiterCharacters="" Enabled="True" MinimumPrefixLength="1" ServiceMethod="GetCountries" ServicePath="" TargetControlID="Auto_Search"></asp:AutoCompleteExtender>
        <asp:Button ID="Searchbtn" runat="server" Text="Search"  OnClick="Searchbtn_Click"/>
                <br/><br/>


  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
           <img src="Assets\Images\cour2.jpg" alt="New york" style="width:100%; height:80%;"/>
      </div>

      <div class="item">
          <img src="Assets\Images\cour3.jpg" alt="New york" style="width:100%; height:80%;"/>
      </div>
    
      <div class="item">
          <img src="Assets\Images\cour1.jpg" alt="New york" style="width:100%; height:80%;"/>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</asp:Content>
