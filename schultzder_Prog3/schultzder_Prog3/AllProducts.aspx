<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>CS3870 - FALL 2019 - PROGRAM 2</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
    
        <!--
    <style type="text/css">
        #Button1
        {
            z-index: 1;
            left: 550px;
            top: 100px;
            position: relative;
            width: 66px;
        }
    </style>
            -->

</head>

<body>

    <form id="form1" runat="server">

    <h1 class="CS3870Title">Web Protocols, Technologies and Applications</h1>
    <h2 class="CS3870Name">Derek Schultz</h2>


     <ul class="navbar">
        <li> <a href="AllProducts.aspx"> All Products</a></li>

        <li> <a href="UpdateProducts.aspx">Update Products </a></li>

         <li> <a href="Shopping.aspx"> Shopping</a></li>
    </ul>

    <h3 class="centerText">CS3870: Program 2</h3>

     
              <br />
              <br />
    <div>

        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Height="165px" style="margin-left: 6px" Width="1037px" HorizontalAlign ="Center">
        </asp:GridView>

    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UWPCS3870ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
    </form>
</body>
</html>