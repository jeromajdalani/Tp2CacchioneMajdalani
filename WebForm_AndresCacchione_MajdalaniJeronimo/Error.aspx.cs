﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm_AndresCacchione_MajdalaniJeronimo
{
    public partial class Error : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Cualquier nombre"] != null)
                lblError.Text = Session["Cualquier nombre"].ToString();
        }
    }
}