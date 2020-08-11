using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class baitap_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbTen.Text = Request.QueryString["Name"];
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        String strcn = ConfigurationManager.ConnectionStrings["BTL_Web"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();

        String strcmd = "select count(*) from KHACHHANG Where Email = '" + txtTen.Text + "' and MatKhau = '" + txtMatKhau.Text + "' ";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strcmd;

        int bKTra = (int)cmd.ExecuteScalar();
        if (bKTra > 0)
        {
            Response.Redirect("TrangChu.aspx?Name="+txtTen.Text+"");
            
        }
        
        cn.Close();
    }
    
}
