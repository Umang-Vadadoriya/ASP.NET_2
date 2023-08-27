using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assign_2.Q3
{
    public partial class Que3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Setting Up Date Control
            tbVisit.Text = DateTime.Now.ToString("yyyy-MM-dd");
            RangeValidateVisit.MaximumValue = DateTime.Now.ToShortDateString();
            RangeValidateVisit.MinimumValue = DateTime.Now.AddDays(-5).ToShortDateString();

            // Keeping Password After PostBack
            string pwd = tbPass.Text;
            tbPass.Attributes.Add("value", pwd);
            tbPassRe.Attributes.Add("value", pwd);
        }

        protected void ValidateBalance_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string selected = dropdownType.Text.ToString();
            int balance = Convert.ToInt32(tbBalance.Text);
            switch(selected)
            {
                case "Savings":
                    if (balance >= 1000)
                        args.IsValid = true;
                    else
                    {
                        args.IsValid = false;
                        ValidateBalance.ErrorMessage = "Savings Account Opening Balance is ₹1000";
                    }
                    break;

                case "Current":
                    if (balance >= 2000)
                        args.IsValid = true;
                    else
                    {
                        args.IsValid = false;
                        ValidateBalance.ErrorMessage = "Current Account Opening Balance is ₹2000";
                    }
                    break;

                default:
                    args.IsValid = true;
                    break;
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                bool flag = false;
                if (tbPass.Text != "") flag = true;

                string ex = "<script>alert(' Account No: " + tbACNo.Text + "\\n Holder Name: " + tbName.Text + "\\n Visit Date: " + tbVisit.Text + "\\n Account Type: " + dropdownType.Text + "\\n Opening Balance: " + tbBalance.Text + "\\n Password Set: " + flag + "\\n');</script>";
                Response.Write(ex);
                
                //string ex = "alert(' Account No: " + tbACNo.Text + "\\n Holder Name: " + tbName.Text + "\\n Visit Date: " + tbVisit.Text + "\\n Account Type: " + dropdownType.Text + "\\n Opening Balance: " + tbBalance.Text + "\\n Password Set: " + flag + "\\n')";
                //ClientScript.RegisterStartupScript(this.GetType(), "alert", ex, true);
            }
        }
    }
}