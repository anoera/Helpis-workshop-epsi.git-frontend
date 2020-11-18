using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HELPIS.Models
{
    public partial class Homepis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnValider_Click(object sender, EventArgs e)
        {
            //divRetour.InnerText = requete.Main(tbParam.Text);

        }

        [WebMethod]
        public static string retour(string entree)
        {
            string s = requete.Main(entree);

            return s;
        }
    }
}