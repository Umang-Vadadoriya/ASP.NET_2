using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assign_2.Q4
{
    public partial class Que46 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tbDatePicker_CalendarExtender.StartDate = DateTime.Now;
                tbDatePicker_CalendarExtender.EndDate = DateTime.Now.AddMonths(3);
                tbDatePicker_CalendarExtender.SelectedDate = DateTime.Now.AddMonths(1).AddDays(15);
            }
        }

        protected void tbDatePicker_TextChanged(object sender, EventArgs e)
        {
            tbDatePicker_CalendarExtender.SelectedDate = Convert.ToDateTime(tbDatePicker.Text);
            lblHelp.Text = "Selected Date Is: " + tbDatePicker.Text;
            lblHelp.Visible = true;
        }
    }
}