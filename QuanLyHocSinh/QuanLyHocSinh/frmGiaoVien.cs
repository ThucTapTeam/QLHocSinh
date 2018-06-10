using DAL;
using DAO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyHocSinh
{
    public partial class frmGiaoVien : Form
    {
        public frmGiaoVien()
        {
            InitializeComponent();
            ShowData();
            if (frmLogin.quyen == 1)
            {
                PhanQuyen(true);
            }
            else
                PhanQuyen(false);
        }
        
        private void FormatData()
        {
            txtMaGV.Text = "";
            txtTen.Text = "";
            txtSoDT.Text = "";
            txtDiaChi.Text = "";
            txtLuong.Text = "";
        }
        void PhanQuyen(bool b)
        {
            btThem.Enabled = b;
            btSua.Enabled = b;
            btXoa.Enabled = b;
        }
        private void EnabledData(bool b)
        {
            txtMaGV.Enabled = b;
            txtTen.Enabled = b;
            txtSoDT.Enabled = b;
            txtDiaChi.Enabled = b;
            txtLuong.Enabled = b;
            btOk.Visible = b;
            btCancel.Visible = b;
        }
        private void EnableMethod(bool b)
        {
            if (frmLogin.quyen == 1)
            {
                btThem.Enabled = b;
                btSua.Enabled = b;
                btXoa.Enabled = b;
            }
        }
        
        private void ShowData()
        {
            
        }
        private void btThem_Click(object sender, EventArgs e)
        {
            
        }

        private void btOk_Click(object sender, EventArgs e)
        {
            
        }

        private void btThoat_Click(object sender, EventArgs e)
        {
            this.Close();
            frmMain fmain = new frmMain();
            fmain.Show();
        }

        private void dtgvGiaoVien_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void btSua_Click(object sender, EventArgs e)
        {
           
        }

        private void btCancel_Click(object sender, EventArgs e)
        {
            
        }

        private void btXoa_Click(object sender, EventArgs e)
        {
            
        }

        private void btTimKiem_Click(object sender, EventArgs e)
        {
            
        }

        private void btHienThi_Click(object sender, EventArgs e)
        {
            
        }
    }
}
