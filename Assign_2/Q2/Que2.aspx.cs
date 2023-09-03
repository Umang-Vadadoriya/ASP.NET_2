using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assign_2.Q2
{
    public partial class Que2 : System.Web.UI.Page
    {
        Table data_table = new Table();
        protected void Page_Init(object sender, EventArgs e)
        {

            if (Session["data_table"] != null)
            {
                data_table = (Table)Session["data_table"];
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (data_table.Rows.Count < 1)
                    generate_header();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            TableRow tr = new TableRow();

            TableCell tc0 = new TableCell();
            tc0.BorderColor = System.Drawing.Color.Gray;
            tc0.BorderWidth = 2;
            tc0.BorderStyle = BorderStyle.Dashed;
            tc0.VerticalAlign = VerticalAlign.Middle;
            tc0.HorizontalAlign = HorizontalAlign.Center;
            tc0.Text = tBRollNo.Text;
            tr.Cells.Add(tc0);

            TableCell tc1 = new TableCell();
            tc1.BorderColor = System.Drawing.Color.Gray;
            tc1.BorderWidth = 2;
            tc1.BorderStyle = BorderStyle.Dashed;
            tc1.VerticalAlign = VerticalAlign.Middle;
            tc1.HorizontalAlign = HorizontalAlign.Center;
            tc1.Text = tBName.Text;
            tr.Cells.Add(tc1);

            TableCell tc2 = new TableCell();
            tc2.BorderColor = System.Drawing.Color.Gray;
            tc2.BorderWidth = 2;
            tc2.BorderStyle = BorderStyle.Dashed;
            tc2.VerticalAlign = VerticalAlign.Middle;
            tc2.HorizontalAlign = HorizontalAlign.Center;
            tc2.Text = tBCourse.Text;
            tr.Cells.Add(tc2);

            data_table.Rows.Add(tr);
            Panel1.Controls.Add(data_table);

            Session["data_table"] = data_table;

            tr.Dispose();
            tc0.Dispose();
            tc1.Dispose();
            tc2.Dispose();
        }
        protected void generate_header()
        {
            TableRow tr = new TableRow();

            TableCell tc0 = new TableCell();
            //tc0.Width = 85;
            tc0.CssClass = "fw-bold";
            tc0.BorderColor = System.Drawing.Color.Black;
            tc0.BorderWidth = 1;
            tc0.VerticalAlign = VerticalAlign.Middle;
            tc0.HorizontalAlign = HorizontalAlign.Center;
            tc0.Text = "Roll No.";
            tr.Cells.Add(tc0);

            TableCell tc1 = new TableCell();
            //tc1.Width = 85;
            tc1.CssClass = "fw-bold";
            tc1.BorderColor = System.Drawing.Color.Black;
            tc1.BorderWidth = 1;
            tc1.VerticalAlign = VerticalAlign.Middle;
            tc1.HorizontalAlign = HorizontalAlign.Center;
            tc1.Text = "Name";
            tr.Cells.Add(tc1);

            TableCell tc2 = new TableCell();
            //tc2.Width = 85;
            tc2.CssClass = "fw-bold";
            tc2.BorderColor = System.Drawing.Color.Black;
            tc2.BorderWidth = 1;
            tc2.VerticalAlign = VerticalAlign.Middle;
            tc2.HorizontalAlign = HorizontalAlign.Center;
            tc2.Text = "Course";
            tr.Cells.Add(tc2);

            data_table.Rows.Add(tr);
            tr.Dispose();
            tc0.Dispose();
            tc1.Dispose();
            tc2.Dispose();

            tBCourse.Text = "";
            tBName.Text = "";
            tBCourse.Text = "";
        }
    }
}