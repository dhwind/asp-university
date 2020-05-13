using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using MongoDB.Driver;
using Database;
using Acc;

namespace ProjectIT2327
{
    public partial class WebForm1 : System.Web.UI.Page

    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void reg_Onclick(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        public void log_Onclick(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        public void Btnlog_Onclick(object sender, EventArgs e)
        {
            MongoCRUD db = new MongoCRUD("Authentication");
            var accs = db.LoadRecords<Accounts>("Accounts");

            foreach (var acc in accs)
            {
                if(Txtemail.Text == acc.Email && Txtpwd.Text == acc.Password)
                {
                    InCorrect.Text = "";
                    Response.Write($"<script>window.alert('Welcome, {acc.Name}');</script>");
                }

                else
                {
                    InCorrect.Text = "Incorrect login or password";
                }
            }
        }
    }
}