using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical3
{
    public partial class BusTicketing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == true)
            {
                lblTime.Text = "You are accessing this page on " + DateTime.Now.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void calDepartDt_SelectionChanged(object sender, EventArgs e)
        {
            txtDepartDt.Text = calDepartDt.SelectedDate.ToShortDateString();
        }

        protected void ddlTo_SelectedIndexChanged(object sender, EventArgs e)
        {
            // 0 = --select Destination --
            //1 = Butterworth
            //2 = Seremban

            //0 = --Select From--
            //1 = Hentian Duta
            //2 = Hentian Putra

            //Origin - Destination
            //1     1  Yes
            //2     1  No
            //1     2  No
            //2     2  Yes
           
            if(ddlTo.SelectedIndex != ddlFrom.SelectedIndex)
            {
                //Error
                lblError.Text = "sorry, we do not provice service from " + ddlFrom.SelectedItem.Text + " to " + ddlTo.SelectedItem.Text + ".";
                return;  //terminate program execution here

            }
            else
            {
                lblError.Text = string.Empty;
            }
            
            // Checking missing of input


            //Calculate Ticket price
            float price = 0.00f;
            int adult, child;
            adult = Convert.ToInt16(txtAdult.Text);
            child = Convert.ToInt16(txtChild.Text);

            //Check origin and Destination

            if (ddlFrom.SelectedIndex==1 && ddlTo.SelectedIndex==1)
            {
                //From Hentian Duta to Butterworth
                price = adult * 34.00f + child * 25.50f;
            }
            if (ddlFrom.SelectedIndex == 2 && ddlTo.SelectedIndex == 2)
                //From Hentian Putra to Seremban
                price = adult * 6.00f + child * 4.30f;


            //Display output
            txtPrice.Text = price.ToString("C2"); //MYR


        }

        protected void btnCancel_click_Click(object sender, EventArgs e)
        {
            txtAdult.Text = string.Empty;
            txtChild.Text = string.Empty;
            txtDepartDt.Text = string.Empty;
            txtPrice.Text = string.Empty;
            ddlFrom.SelectedIndex = 0;
        }
    }


        
}