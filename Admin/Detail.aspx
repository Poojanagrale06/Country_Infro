<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="CountryInfro.Admin.Detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/><br/>
    <div class="container">
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Primary_Key" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Primary_Key" HeaderText="Primary_Key" InsertVisible="False" ReadOnly="True" SortExpression="Primary_Key" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
                <asp:BoundField DataField="Conform_Pass" HeaderText="Conform_Pass" SortExpression="Conform_Pass" />
                <asp:BoundField DataField=" " HeaderText="Active" />
              
               
                
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CountryInfroConnectionString %>" DeleteCommand="DELETE FROM [Register_Table] WHERE [Primary_Key] = @Primary_Key" InsertCommand="INSERT INTO [Register_Table] ([Username], [Pass], [Conform_Pass]) VALUES (@Username, @Pass, @Conform_Pass)" SelectCommand="SELECT [Primary_Key], [Username], [Pass], [Conform_Pass] FROM [Register_Table]" UpdateCommand="UPDATE [Register_Table] SET [Username] = @Username, [Pass] = @Pass, [Conform_Pass] = @Conform_Pass WHERE [Primary_Key] = @Primary_Key">
            <DeleteParameters>
                <asp:Parameter Name="Primary_Key" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Pass" Type="String" />
                <asp:Parameter Name="Conform_Pass" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Pass" Type="String" />
                <asp:Parameter Name="Conform_Pass" Type="String" />
                <asp:Parameter Name="Primary_Key" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
    <br/><br/>
</asp:Content>
