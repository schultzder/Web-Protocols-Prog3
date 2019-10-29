<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="schultzder_Prog3.UpdateProduct" EnableViewStateMac="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form2" runat="server">
        <div style="text-align: center">
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
            <table style="width: 100%">
                <tr>
                    <td style="height: 72px; width: 127px">
                        <asp:Button ID="Button1" runat="server" Text="First" OnClick="Button1_Click" />
                    </td>
                    <td style="height: 72px; width: 122px">
        <asp:Button ID="Button2" runat="server" Text="Previous" OnClick="Button2_Click" />
                    </td>
                    <td style="height: 72px; width: 118px">
        <asp:Button ID="Button3" runat="server" Text="Next" OnClick="Button3_Click" />
                    </td>
                    <td style="height: 72px; width: 126px">
        <asp:Button ID="Button4" runat="server" Text="Last" OnClick="Button4_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 127px">
                        <asp:Label ID="Label1" runat="server" Text="ProductID"></asp:Label>
                    </td>
                    <td style="width: 122px">
                        <asp:Label ID="Label2" runat="server" Text="Product Name"></asp:Label>
                    </td>
                    <td style="width: 118px">
                        <asp:Label ID="Label3" runat="server" Text="Unit Price"></asp:Label>
                    </td>
                    <td style="width: 126px">
                        <asp:Label ID="Label4" runat="server" Text="Description"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="height: 26px; width: 127px">
        <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black"></asp:TextBox>
                    </td>
                    <td style="height: 26px; width: 122px">
        <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black"></asp:TextBox>
                    </td>
                    <td style="height: 26px; width: 118px">
        <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black"></asp:TextBox>
                    </td>
                    <td style="height: 26px; width: 126px">
        <asp:TextBox ID="TextBox4" runat="server" BorderColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 127px">&nbsp;</td>
                    <td style="width: 122px">&nbsp;</td>
                    <td style="width: 118px">&nbsp;</td>
                    <td style="width: 126px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 158px; width: 127px"></td>
                    <td style="height: 158px; width: 122px">
        <asp:Button ID="Button5" runat="server" Text="Update" OnClick="Button5_Click" />
                    </td>
                    <td style="height: 158px; width: 118px">
        <asp:Button ID="Button6" runat="server" Text="Delete" OnClick="Button6_Click" />
                    </td>
                    <td style="height: 158px; width: 126px">
        <asp:Button ID="Button7" runat="server" Text="New" OnClick="Button7_Click" />
                    </td>
                </tr>
            </table>
        <br />
        <br />
            <br />
            <textarea id="TextArea1" runat="server" name="S1" style="width: 705px; height: 128px"></textarea><br />
        <br />
        <br />
        </div>
       
</form>
</asp:Content>
