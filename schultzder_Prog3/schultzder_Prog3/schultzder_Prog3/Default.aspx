<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="True" CodeBehind="Default.aspx.cs" Inherits="schultzder_Prog3.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form2" runat="server">
        <div style="text-align: center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1"
            style="z-index: 1; position: relative; width:50%; margin-left:25%; align-items: center; Height: 176px">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            </Columns>
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UWPCS3870ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        </div>
    </form>

</asp:Content>
