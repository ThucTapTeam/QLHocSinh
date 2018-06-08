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
    public partial class frmKetQuaHocTap : Form
    {
        public frmKetQuaHocTap()
        {
            InitializeComponent();
            ShowData();
            if (frmLogin.quyen == 1)
            {
                PhanQuyen(true);
            }
            else
                PhanQuyen(false);
            LoadComHocSinh();
            txtMaHS.Text = cbTenHS.SelectedValue.ToString();
        }
        
        

        private void FormatData()
        {
            txtTBHK1.Text = "";
            txtTBHK2.Text = "";
            txtMaKQHT.Text = "";
        }
        void PhanQuyen(bool b)
        {
            btThem.Enabled = b;
            btSua.Enabled = b;
            btXoa.Enabled = b;
        }
        private void EnabledData(bool b)
        {
            txtTBHK1.Enabled = b;
            txtTBHK2.Enabled = b;
            txtMaKQHT.Enabled = b;
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
        void LoadComHocSinh()
        {
            
        }
        
        private void btThem_Click(object sender, EventArgs e)
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
        private void btOk_Click(object sender, EventArgs e)
        {
            
        }

        private void cbHocLuc1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void btCancel_Click(object sender, EventArgs e)
        {
            
        }

        private void btXoa_Click(object sender, EventArgs e)
        {
            
        }

        private void btHienThi_Click(object sender, EventArgs e)
        {
            
        }

        private void btTimKiem_Click(object sender, EventArgs e)
        {
            
        }

        private void dtgvKetQuaHocTap_CellClick_1(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void cbTenHS_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}
