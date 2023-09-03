using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assign_2.Q4
{
    public partial class Que44 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ComboBox1.Items.Add("Umang");
            ComboBox1.Items.Add("Riya");
            ComboBox1.Items.Add("Pja");
            ComboBox1.Items.Add("Miki");
            ComboBox1.Items.Add("Bindu");
            ComboBox1.Items.Add("Kunal");
            ComboBox1.Items.Add("Rutvik");
            ComboBox1.Items.Add("Archan");
            ComboBox1.Items.Add("Jaydeep");
            ComboBox1.Items.Add("Aanand");
            ComboBox1.Items.Add("Vivek");
        }

        protected void ComboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblHelp.Text = "Current Value is : " + ComboBox1.SelectedItem.Text;
        }
    }
}