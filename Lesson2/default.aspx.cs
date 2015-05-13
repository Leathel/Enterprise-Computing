using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lesson2
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                btnCopyText.Enabled = true;
                lblMessage.Text = String.Empty;
            }
            else
            {
                btnCopyText.Enabled = false;
            }
        }

        protected void btnCopyText_Click(object sender, EventArgs e)
        {
            lblMessage.Text = TxtMessage.Text;
        }

        protected void btnChoices_Click(object sender, EventArgs e)
        {
            //loop thorugh each check box and validate which one has been selected
            lblToppings.Text = "";
            foreach(ListItem topping in cblToppings.Items)
            {
                if(topping.Selected == true)
                {
                    lblToppings.Text += topping.Text + " ";
                }
            }
            lblSize.Text = ddlSize.SelectedItem.Text;
        }

        //Does nothing for now
        protected void cblToppings_SelectedIndexChanged(object sender, EventArgs e)
        {
            //lblToppings.Text = "AutoPostBack";
        }
    }
}