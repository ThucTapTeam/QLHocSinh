using DAL;
//using DAO;
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
    public partial class frmThongTinGiangDay : Form
    {
        public frmThongTinGiangDay()
        {
            InitializeComponent();
            ShowData();
            if (frmLogin.quyen == 1)
            {
                PhanQuyen(true);
            }
            else
                PhanQuyen(false);
            LoadComMH();
            LoadComGV();
            LoadComLH();
            txtMaGV.Text = cbTenGV.SelectedValue.ToString();
            maGV = txtMaGV.Text;
            txtMaLH.Text = cbTenLH.SelectedValue.ToString();
            maLH = txtMaLH.Text;
            txtMaMH.Text = cbTenMH.SelectedValue.ToString();
            maMH = txtMaMH.Text;
        }
        
        

        private void FormatData()
        {
            txtThu.Text = "";
            txtTiet.Text = "";
        }
        void PhanQuyen(bool b)
        {
            btThem.Enabled = b;
            btSua.Enabled = b;
            btXoa.Enabled = b;
        }
        private void EnabledData(bool b)
        {
            txtThu.Enabled = b;
            txtTiet.Enabled = b;
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
        void LoadComGV()
        {
            
        }
        void LoadComLH()
        {
            
        }
        void LoadComMH()
        {
            
        }

        private void btThem_Click(object sender, EventArgs e)
        {
            
        }

        private void btSua_Click(object sender, EventArgs e)
        {
            
        }

        private void btXoa_Click(object sender, EventArgs e)
        {
            
        }

        private void btThoat_Click(object sender, EventArgs e)
        {
            this.Close();
            frmMain fmain = new frmMain();
            fmain.Show();
        }
        string maGV, maLH, maMH;
        private void btOk_Click(object sender, EventArgs e)
        {
            
        }

        private void dtgvThongTinGD_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void btThoat_Click_1(object sender, EventArgs e)
        {
            this.Close();
            frmMain fmain = new frmMain();
            fmain.Show();
        }

        private void btCancel_Click(object sender, EventArgs e)
        {
            
        }

        private void cbTenGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtMaGV.Text = cbTenGV.SelectedValue.ToString();
        }

        private void btHienThi_Click(object sender, EventArgs e)
        {
           
        }

        private void btTiemKiem_Click(object sender, EventArgs e)
        {
            
        }

        private void cbTenLH_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void cbTenMH_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
    }
}
