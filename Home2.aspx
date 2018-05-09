<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home2.aspx.cs" Inherits="CountryInfro.Home2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
<section id="Country"><br/><br/>
    <div class="container">
    
    <div class="container wow fadeInUp">

    <%-- First Row--%>
<asp:Repeater ID="Repeater" runat="server" DataSourceID="SqlDataSource1">
       <ItemTemplate>
           <asp:Label ID="Label7" runat="server" Text='<%#Eval("Country_Name") %>'  style="color:Black; font-size:20px; text-decoration:solid"></asp:Label><hr><i style="font-size:24px" class="fa">&#xf08a;</i>

           <h4 style="align-content:center;">Country Information</h4>
        
      <div class="row">
        <div class="col-md-4">

            
          <div class="member" style="background-color:black; width:60%; height:150px;">
              <h3 style="color:white; fill:white; text-decoration:solid">Capital</h3>
              <asp:Label ID="Label2" runat="server" Text='<%#Eval("Capital") %>'  style="color:white; font-size:20px; text-decoration:solid"></asp:Label>
                     
                  
            
          </div>
            
        </div>

        <div class="col-md-4">
          <div class="member" style="background-color:black; width:60%; height:150px;">
              <h3 style="color:white; fill:white; text-decoration:solid;">Subregion</h3>
              <asp:Label ID="Label3" runat="server" Text='<%#Eval("Subregion") %>'  style="color:white; font-size:20px;  text-decoration:solid;"></asp:Label>
          </div>
        </div>


           <div class="col-md-4">
          <div class="member" style="background-color:black; width:60%; height:150px; ">
              <h3 style="color:white; fill:white; text-decoration:solid;">Population</h3>
              <asp:Label ID="Label8" runat="server" Text='<%#Eval("Pollution") %>'  style="color:white;font-size:20px;  text-decoration:solid;"></asp:Label>
          </div>
        </div>

</div>
        <br/><br/>
          
  
          <%--Second row--%>
            <div class="row">
        <div class="col-md-4" >
          <div class="member" style="background-color:black; width:60%; height:150px; ">
              <h3 style="color:white; fill:white; text-decoration:solid;">Region</h3>
              <asp:Label ID="Label4" runat="server" Text='<%#Eval("Region") %>'  style="color:white; font-size:20px; text-decoration:solid;"></asp:Label>
          </div>
        </div>

        <div class="col-md-4" >
          <div class="member" style="background-color:black; width:60%; height:150px;">
              <h3 style="color:white; fill:white; text-decoration:solid;">Area</h3>
              <asp:Label ID="Label5" runat="server" Text='<%#Eval("Area") %>' style="color:white;font-size:20px;  text-decoration:solid;" ></asp:Label>
          </div>
        </div>

                 <div class="col-md-4">
          <div class="member" style=" width:50%; height:50%;">
             
              <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Flag") %>' Width="120%" Height="70%" />
          </div>
        </div>

 </div>
        
</div>
   
   </div>     
    <div class="container">
       <hr> 
    <h3>CURRENCIES</h3>
  Name: <asp:Label ID="Label1" runat="server" Text='<%#Eval("Currencies_Name") %>' style="text-decoration:solid"></asp:Label><br/>
   Symbool:</> <asp:Label ID="Label6" runat="server" Text='<%#Eval("Symbool") %>' style="text-decoration:solid"></asp:Label>
 
<hr>
        </ItemTemplate>
          </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CountryInfroConnectionString %>" SelectCommand="SELECT * FROM [Country_Infromation]">
        </asp:SqlDataSource>
        </div>
    <div class="container">
       
   <h3>LOCATION</h3>     
<div class="mapouter"><div class="gmap_canvas"><iframe width="600" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=university of san francisco&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe></div><a href="https://www.pureblack.de/webdesign-duesseldorf/"></a><style>.mapouter{overflow:hidden;height:500px;width:600px;}.gmap_canvas {background:none!important;height:500px;width:600px;}</style></div>


    </div>
    <br/><br/>

</div>
        
  </section>

</asp:Content>
