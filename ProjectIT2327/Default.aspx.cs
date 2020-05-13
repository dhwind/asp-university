using System;
using System.Net;
using System.IO;
using System.Web.Script.Serialization;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProductProp;
using SlideImages;
using Database;

namespace ProjectIT2327
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MongoCRUD db = new MongoCRUD("Products");
            string[] paths = new string[] {@"D:\ProjectIT2327\ProjectIT2327\js\products\products-lists\promo.json",
                                           @"D:\ProjectIT2327\ProjectIT2327\js\products\products-lists\pizza-list.json",
                                           @"D:\ProjectIT2327\ProjectIT2327\js\products\products-lists\sushi-list.json",
                                           @"D:\ProjectIT2327\ProjectIT2327\js\products\products-lists\soup-list.json",
                                           @"D:\ProjectIT2327\ProjectIT2327\js\slider\slides\slide-images.json",
            };

            string[] collectionNames = new string[] { "Promo", "Pizza", "Sushi", "Soups", "Slides" };

            for (int i = 0; i < paths.Length; i++)
            {
                if (collectionNames[i] == "Slides")
                {
                    db.loadDataFromDB<Slides>(paths[i], collectionNames[i]);

                }

                else db.loadDataFromDB<Product>(paths[i], collectionNames[i]);

            }
        }

        public void reg_Onclick(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        public void log_Onclick(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}