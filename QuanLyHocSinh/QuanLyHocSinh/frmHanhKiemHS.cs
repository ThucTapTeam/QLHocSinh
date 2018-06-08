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
    public partial class frmHanhKiemHS : Form
    {
        public frmHanhKiemHS()
        {
            InitializeComponent();
            ShowData();
            if (frmLogin.quyen == 1)
            {
                PhanQuyen(true);
            }
            else
                PhanQuyen(false);
            LoadComHK();
            LoadComHS();
            txtMaHK.Text = cbTenHK.SelectedValue.ToString();
            txtMaHS.Text = cbTenHS.SelectedValue.ToString();
            maHK = txtMaHK.Text;
            maHS = txtMaHS.Text;
        }

        private void FormatData()
        {
            txtNamHoc.Text = "";
        }
        void PhanQuyen(bool b)
        {
            btThem.Enabled = b;
            btSua.Enabled = b;
            btXoa.Enabled = b;
        }
        private void EnabledData(bool b)
        {
            txtNamHoc.Enabled = b;
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
        void LoadComHK()
        {
           
        }
        void LoadComHS()
        {
            
        }

        private void btThem_Click(object sender, EventArgs e)
        {
            
        }
        string maHK, maHS;
        private void dtgvHanhKiemHS_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void btOk_Click(object sender, EventArgs e)
        {
            
        }

        private void btSua_Click(object sender, EventArgs e)
        {
            
        }

        private void btThoat_Click(object sender, EventArgs e)
        {
            this.Close();
            frmMain fmain = new frmMain();
            fmain.Show();
        }

        private void btCancel_Click(object sender, EventArgs e)
        {
            
        }

        private void btXoa_Click(object sender, EventArgs e)
        {
            
        }

        private void cbTenHK_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void btHienThi_Click(object sender, EventArgs e)
        {
            
        }

        private void btTiemKiem_Click(object sender, EventArgs e)
        {
            
        }

        private void cbTenHS_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}
