using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PayRight
{
    public partial class payfee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;            
        }

        protected void btnpay_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Label1.Text = "<b>Payment Receipt</b><br />" +
                      "Student Name: " + txtname.Text + "<br />" +
                      "Enrollment No: " + txtenroll.Text + "<br />" +
                      "Amount Paid: " + txtamount.Text + "<br />" +                                            
                      "Status: SUCCESS";
            }
            else
            {
                Label1.Text = "";
            }
        }

        protected void cvvExpiryValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = false;
            string[] s = args.Value.Split('/');

            if (s.Length != 2)
                return;



            int month, year;

            if (!int.TryParse(s[0], out month) || !int.TryParse(s[1], out year))
                return;

            if (month < 1 || month > 12)
                return;

            DateTime currentDate = DateTime.Now;
            int currentYear = currentDate.Year;
            int currentMonth = currentDate.Month;

            if(currentYear%100 > year || (currentYear%100 == year && month < currentMonth))
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }

        }
    }
}