using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class baitap_1Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strcn = ConfigurationManager.ConnectionStrings["BTL_Web"].ToString();
            SqlConnection cn = new SqlConnection(strcn);

            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM DanOgran", cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "abc");
            DataList1.DataSource = ds.Tables["abc"];
            DataList1.DataBind();
        }
    }
}