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
    <input type="submit" name="ctl00$ContentPlaceHolder1$btnFirst" value="First" id="ContentPlaceHolder1_btnFirst" disabled="disabled" class="aspNetDisabled" style="z-index: 1; position: relative; width: 10%; margin-left:22.5%; text-align: center" />

    <input type="submit" name="ctl00$ContentPlaceHolder1$btnPrevious" value="Previous" id="ContentPlaceHolder1_btnPrevious" disabled="disabled" class="aspNetDisabled" style="z-index: 1; position: relative; width: 10%; margin-left:5%; text-align: center" />

    <input type="submit" name="ctl00$ContentPlaceHolder1$btnNext" value="Next" id="ContentPlaceHolder1_btnNext" style="z-index: 1; position: relative; width: 10%; margin-left:5%; text-align: center" />

    <input type="submit" name="ctl00$ContentPlaceHolder1$btnLast" value="Last" id="ContentPlaceHolder1_btnLast" style="z-index: 1; position: relative; width: 10%; margin-left:5%; text-align: center" />

    <br /> <br /> 
    <br /> <br /> 

    <span id="ContentPlaceHolder1_lblID" style="display:inline-block;width:15%;z-index: 1; position: relative; width: 15%; margin-left:12.5%; text-align: center">Product ID</span>

    <span id="ContentPlaceHolder1_Label1" style="display:inline-block;width:15%;z-index: 1; position: relative; width: 15%; margin-left:5%; text-align: center">Product Name</span>

    <span id="ContentPlaceHolder1_Label2" style="display:inline-block;width:15%;z-index: 1; position: relative; width: 15%; margin-left:5%; text-align: center">Unit Price</span>

    <span id="ContentPlaceHolder1_Label3" style="display:inline-block;width:15%;z-index: 1; position: relative; width: 15%; margin-left:5%; text-align: center">Description</span>

        <br /> 

    <input name="ctl00$ContentPlaceHolder1$txtID" type="text" value="1   " readonly="readonly" id="ContentPlaceHolder1_txtID" style="border-style:Solid;z-index: 1; position: relative; width: 15%; margin-left:12.5%" />

    <input name="ctl00$ContentPlaceHolder1$txtName" type="text" value="1" id="ContentPlaceHolder1_txtName" style="border-style:Solid;z-index: 1; position: relative; width: 15%; margin-left:5%" />

    <input name="ctl00$ContentPlaceHolder1$txtPrice" type="text" value="$1.00" id="ContentPlaceHolder1_txtPrice" style="border-style:Solid;z-index: 1; position: relative; width: 15%; margin-left:5%; text-align: right" />

    <input name="ctl00$ContentPlaceHolder1$txtDescription" type="text" value="5" id="ContentPlaceHolder1_txtDescription" style="border-style:Solid;z-index: 1; position: relative; width: 15%; margin-left:5%" />

        <br /> <br /> 
    <br /> <br /> 

    <input type="submit" name="ctl00$ContentPlaceHolder1$btnUpdate" value="Update" id="ContentPlaceHolder1_btnUpdate" style="z-index: 1; position: relative; width: 10%; margin-left:25%; text-align: center" />

    <input type="submit" name="ctl00$ContentPlaceHolder1$btnDelete" value="Delete" id="ContentPlaceHolder1_btnDelete" style="z-index: 1; position: relative; width: 10%; margin-left:10%; text-align: center" />

    <input type="submit" name="ctl00$ContentPlaceHolder1$btnNew" value="New" id="ContentPlaceHolder1_btnNew" style="z-index: 1; position: relative; width: 10%; margin-left:10%; text-align: center" />

    <br /> <br /> 
    <br /> <br /> 

    <textarea name="ctl00$ContentPlaceHolder1$txtMsg" rows="2" cols="20" readonly="readonly" id="ContentPlaceHolder1_txtMsg" style="height:200px;z-index: 1; position: relative; width: 40%; margin-left:30%">
</textarea>


    </div>


    </form>

</body>
</html>