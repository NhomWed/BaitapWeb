using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using App_code;

public partial class baitap_PagePiano : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {       string strcn = ConfigurationManager.ConnectionStrings["BTL_Web"].ToString();
            SqlConnection cn = new SqlConnection(strcn);

            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM DanPiano", cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "abc");
            DataList1.DataSource = ds.Tables["abc"];
            DataList1.DataBind();
        if (!IsPostBack)
        {
            XayDung cart = new XayDung();
            cart.craeteItem();
            Session["Cart"] = cart;
        }
    }
}