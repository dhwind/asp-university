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
    public partial class WebForm2 : System.Web.UI.Page
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

        protected void Btnreg_Click(object sender, EventArgs e)  
        {
            MongoCRUD db = new MongoCRUD("Authentication");
            var acc = new Accounts();
            acc.Name = Txtname.Text;
            acc.Email = Txtemail.Text;
            acc.Password = Txtpwd.Text;

            if(acc.Name == "")
            {
                EmName.Text = "*Field name can't be empty!";
            }

            if (acc.Email == "")
            {
                EmEmail.Text = "*Field name can't be empty!";
            }

            if (acc.Password == "")
            {
                EmPass.Text = "*Field name can't be empty!";
            }

            if (acc.Name !="" && acc.Email !="" && acc.Password != "")
            {
                var accs = db.LoadRecords<Accounts>("Accounts");
                int count = 0;

                foreach(var account in accs)
                {
                    if(account.Email == acc.Email)
                    {
                        count += 1;
                    }
                }

                if(count == 0)
                {
                    Exist.Text = "";
                    db.InsertRecord("Accounts", acc);
                    Response.Write($"<script>alert('Account was created! Welcome, {acc.Name}!')</script>");
                }

                else
                {
                    Exist.Text = "*E-mail is already in use!";
                }
                
            }
            
        }
    }
}