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

public partial class baitap_GioHang2 : System.Web.UI.Page
{
    SqlConnection cn1 = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BTL_Web"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["cart"] != null)
            {
                int id = int.Parse(Request.QueryString["id"].ToString() + "");

                String strcmd = "select * from DanPiano where MaDan ='" + id.ToString() + "'";
                SqlDataAdapter da1 = new SqlDataAdapter(strcmd, cn1);
                DataSet d = new DataSet();
                da1.Fill(d);
                if (d.Tables[0].Rows.Count > 0)
                {
                    string name = d.Tables[0].Rows[0][1].ToString();
                    int dongia = int.Parse(d.Tables[0].Rows[0][2].ToString());
                    string hinhanh = d.Tables[0].Rows[0][3].ToString(); 
                    int sl = 1;
                    XayDung cart = new XayDung();
                    cart = (XayDung)Session["Cart"];
                    cart.insertProduct(id, name, sl, dongia, hinhanh);
                    Session["Cart"] = cart;
                }
            }
            else
            {
                Response.Redirect("GioHang2.aspx");
            }
        }
        //hiển thị giỏ hàng
        XayDung cart1 = (XayDung)Session["Cart"];
        DataTable t = cart1.gioHang;
        GridView1.DataSource = t;
        GridView1.DataBind();
        lblbKetqua.Text = cart1.TongTien().ToString();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}