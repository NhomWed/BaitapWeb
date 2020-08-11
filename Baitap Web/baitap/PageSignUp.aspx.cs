using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PageSignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    int DemSL()
    {
        String strcn = ConfigurationManager.ConnectionStrings["BTL_Web"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();

        string strsel = "select count(*) from KHACHHANG";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strsel;

        int sl = (int)cmd.ExecuteScalar();
        cn.Close();

        return sl;
    }

    protected void dky_Click(object sender, EventArgs e)
    {
        String strcn = ConfigurationManager.ConnectionStrings["BTL_Web"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();
        //dem so thanh vien co trung dia chi email nhap tren from??
        String strsel = "select count(*) from KHACHHANG where Email='" + email.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strsel;
        int bKtra = (int)cmd.ExecuteScalar();
        if (bKtra == 1)
        {

            lbKetQua.Text = "Ten USEName đã tồn tại !!!";
        }
        else
        {
            String strcmd = "INSERT INTO KHACHHANG(Hoten,DienThoai,GioiTinh,Email,MatKhau) values(N'" + hoten.Text + "','" + dthoai.Text + "',N'" + RadioButtonList1.Text + "','" + email.Text + "','" + password.Text + "' )";
            cmd.CommandText = strcmd;
            //thực thi
            int rs = cmd.ExecuteNonQuery();
            if (rs == 1)
            {
                Response.Redirect("TrangChu.aspx");
            }
        }

        cn.Close();
       
    }
}