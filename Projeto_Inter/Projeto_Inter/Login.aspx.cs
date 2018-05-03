using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Inter
{
    public partial class Login : System.Web.UI.Page
    {
        bancodadosEntities entity = new bancodadosEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            usuarios u = entity.usuarios.FirstOrDefault(x => x.login == Login1.UserName &&
            x.senha == Login1.Password);

            if (u != null)
            {
                Session["usuariologado"] = u;

                Login1.DestinationPageUrl = "BoasVindas.aspx";
                e.Authenticated = true;
            }

            else
            {
                e.Authenticated = false;
            }
        }
    }
}