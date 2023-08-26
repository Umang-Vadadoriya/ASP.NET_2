using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assign_2.Q1
{
    public partial class Que1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string doc = "application/msword";
            string docx = "application/vnd.openxmlformats-officedocument.wordprocessingml.document";

            foreach (var one_file in fileUp.PostedFiles)
            {

                Random rand = new Random();
                if (one_file.ContentType == doc || one_file.ContentType == docx)
                {
                    int r = rand.Next(1000000, 9999999);

                    string ext = System.IO.Path.GetExtension(one_file.FileName);
                    string new_name = "userId" + "_" + r + ext;

                    try
                    {
                        System.Diagnostics.Debug.WriteLine(Server.MapPath(@"~\upload") + @"\" + new_name);
                        one_file.SaveAs(Server.MapPath(@"~\upload") + @"\" + new_name);
                        lblOutput.Text += "Uploaded : " + one_file.FileName+"<br>";
                    }
                    catch (Exception ex)
                    {
                        System.Diagnostics.Debug.WriteLine("Error" + ex.Message);
                        lblOutput.Text += "Error While Uploading : " + one_file.FileName + "<br>";
                    }
                }
                else
                {
                    lblOutput.Text += "Invalid Type Of : " + one_file.FileName + "<br/>";                    
                }
            }
        }
    }
}