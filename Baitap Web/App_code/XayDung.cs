using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for XayDung
/// </summary>
namespace App_code
{
    public class XayDung
    {
       // khởi tạo giỏ hàng
        public DataTable gioHang = new DataTable();
        public void craeteItem()
        {
            gioHang.Columns.Add("MaDan");
            gioHang.Columns.Add("TenSP");
            gioHang.Columns.Add("SL");
            gioHang.Columns.Add("Gia");
            gioHang.Columns.Add("HinhAnh");

        }
        //Thêm sản phẩm vào giỏ hàng
        public Boolean insertProduct(int IDProduct, string name, int soLuong, int gia, string hinh)
        {
            Boolean flag = false;
            foreach (DataRow d in gioHang.Rows)
            {
                if (int.Parse(d[0].ToString()) == IDProduct)
                {
                    d[2] = int.Parse(d[2].ToString()) + soLuong;
                    flag = true;
                }

            }
            if (flag == false)
            {
                DataRow dong = gioHang.NewRow();
                dong[0] = IDProduct;
                dong[1] = name;
                dong[2] = soLuong;
                dong[3] = gia;
                dong[4] = hinh;
                gioHang.Rows.Add(dong);
                return true;
            }
            return false;
        }
        //tính tổng tiền
        public int TongTien()
        {
            int a = 0;
            foreach (DataRow d in gioHang.Rows)
            {
                a = a + int.Parse(d[2].ToString()) * int.Parse(d[3].ToString());
            }
            return a;
        }
    }
}