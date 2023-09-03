using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assign_2.Q4
{
    public partial class Que43 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AjaxControlToolkit.AccordionPane pane = new AjaxControlToolkit.AccordionPane();
            Label lbl0 = new Label();
            Label lbl1 = new Label();
            lbl0.Text = "Pane 4 (Code Base)";
            pane.HeaderContainer.Controls.Add(lbl0);

            lbl1.Text = "<p>I'm Content Of Pane 4</p>< p > Lorem ipsum dolor sit amet consectetur adipisicing elit.At, accusantium!Iste odio eum omnis consequatur ipsa maiores, nam quibusdam hic aut veniam sunt exercitationem ducimus architecto dolores ipsam laborum? Dignissimos quo explicabo quam optio soluta similique, iste voluptate inventore obcaecati facere, esse vero ex magni ut autem illum fugiat hic!</ p > ";
            pane.ContentContainer.Controls.Add(lbl1);

            Accordion1.Panes.Add(pane);
        }
    }
}