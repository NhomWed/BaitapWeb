using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class baitap_js_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["TenSP"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtTenSP")).Text;
        
        SqlDataSource1.InsertParameters["Gia"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtGia")).Text;
        SqlDataSource1.InsertParameters["MoTa"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtMoTa")).Text;
        SqlDataSource1.InsertParameters["MaLoai"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtMaLoai")).Text;
        SqlDataSource1.InsertParameters["DuongDan"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtDuongDan")).Text;

        SqlDataSource1.Insert();
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string ConStr = "Data Source=ADMIN;Initial Catalog=BTL_Web;Integrated Security=True";
        using (SqlConnection Con = new SqlConnection(ConStr))
        {
            //Khai báo lệnh SQL
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_InsertProduct";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Connection = Con;

            //Khai báo các ParameCon
            cmd.Parameters.AddWithValue("@TenSP", txtTenSP.Text);
            cmd.Parameters.AddWithValue("@Gia", txtGiaSP.Text);
            cmd.Parameters.AddWithValue("@MoTa", txtMoTa.Text);
            cmd.Parameters.AddWithValue("@MaLoai", txtMaLoai.Text);
            cmd.Parameters.AddWithValue("@DuongDan", txtDuongDanHinh.Text);

            Con.Open();
            cmd.ExecuteNonQuery();
            //SqlDataSource1.Insert();
            Con.Close();

        }
    }
  
    protected void Button2_Click1(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
}