using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Caching;
using System.Web.UI;
using System.Web.UI.WebControls;
using schultzder_Prog3.DataSourceControls;

namespace schultzder_Prog3
{
    public partial class UpdateProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            SQLDataClass.getAllProducts();
            TextArea1.InnerText = "";
            if (!IsPostBack)
                DisplayRow((int)Session["Prog3_Index"]);
        }



        private void DisplayRow(int index)
        {
            System.Data.DataRow row = SQLDataClass.tblProduct.Rows[index];

            TextBox1.Text = row[0].ToString();
            TextBox2.Text = row[1].ToString();
            TextBox3.Text = string.Format("{0:C}", row[2]);
            TextBox4.Text = row[3].ToString();

            EnableDisableButtons();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int index = (int)Session["Prog3_Index"] + 1;
            if (index > SQLDataClass.tblProduct.Rows.Count - 1)
                index = SQLDataClass.tblProduct.Rows.Count - 1;
            Session["Prog3_Index"] = index;
            DisplayRow(index);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int index = (int)Session["Prog3_Index"] - 1;
            if (index < 0)
                index = 0;
            Session["Prog3_Index"] = index;
            DisplayRow(index);
        }

        private void EnableDisableButtons()
        {
            int curIndex = (int)Session["Prog3_Index"];
            Button1.Enabled = (curIndex > 0);
            Button2.Enabled = (curIndex > 0);
            Button3.Enabled = (curIndex < SQLDataClass.tblProduct.Rows.Count - 1);
            Button4.Enabled = (curIndex < SQLDataClass.tblProduct.Rows.Count - 1);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int index = (int)Session["Prog3_Index"];
            index = 0;
            Session["Prog3_Index"] = index;
            DisplayRow(index);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int index = (int)Session["Prog3_Index"];
            index = SQLDataClass.tblProduct.Rows.Count -1;
            Session["Prog3_Index"] = index;
            DisplayRow(index);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                string theID = TextBox1.Text;
                string newName = TextBox2.Text;
                double newPrice = double.Parse(TextBox3.Text.Replace("$", ""));
                string newDesc = TextBox4.Text;

                SQLDataClass.UpdateProduct(theID, newName, newPrice, newDesc);
                TextArea1.InnerText = "Record Updated";
                SQLDataClass.getAllProducts();
            }
            catch(Exception ex)
            {
                TextArea1.InnerText = "Product Not Updated:" + ex.Message;
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (Button6.Text.Equals("Cancel"))
            {
                ResetButtons();
                TextArea1.InnerText = "Insertion was canceled";
            }
            else
            {
                try
                {
                    string theID = TextBox1.Text;

                    SQLDataClass.DeleteProdcut(theID);
                    TextArea1.InnerText = "Record Deleted";
                }
                catch (Exception ex)
                {
                    TextArea1.InnerText = "Product Not Deleted" + ex.Message;
                }
            }
        }

        protected void ResetButtons()
        {
            Button6.Text = "Delete";
            Button5.Enabled = true;
            Button1.Enabled = true;
            Button2.Enabled = true;
            Button3.Enabled = true;
            Button4.Enabled = true;
            DisplayRow((int)Session["Prog3_Index"]);
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            if(Button7.Text.Equals("Save New"))
            {
                try
                {
                    string theID = TextBox1.Text;
                    string newName = TextBox2.Text;
                    double newPrice = double.Parse(TextBox3.Text.Replace("$", ""));
                    string newDesc = TextBox4.Text;

                    SQLDataClass.AddProduct(theID, newName, newPrice, newDesc);
                    TextArea1.InnerText = "Record Added";
                    SQLDataClass.getAllProducts();
                    ResetButtons();
                }
                catch (Exception ex)
                {
                    TextArea1.InnerText = "Product Not added:" + ex.Message;
                }

            }
            else
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";

                Button1.Enabled = false;
                Button2.Enabled = false;
                Button3.Enabled = false;
                Button4.Enabled = false;
                Button5.Enabled = false;

                Button6.Text = "Cancel";
                Button7.Text = "Save New";
            }
        }
    }
}