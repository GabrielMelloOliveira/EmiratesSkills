using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using EmiratesSkills_S1.Model;

namespace EmiratesSkills_S1.View
{
    public partial class ControlEditUser : UserControl
    {
        public string Email { get; set; }

        public ControlEditUser(string email)
        {
            InitializeComponent();
            Email = email;
            LoadInfo();
        }

        private void btnBrowse_Click(object sender, EventArgs e)
        {
            OpenFileDialog open = new OpenFileDialog();
            open.DefaultExt = ".jpg";
            DialogResult result = open.ShowDialog();
            if (result == DialogResult.OK)
            {
                tbPhotoFile.Text = open.FileName;
            }
            pbPhoto.Image = Image.FromFile(open.FileName);
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(tbFullName.Text) ||
                string.IsNullOrEmpty(tbMobile.Text) || string.IsNullOrEmpty(tbPhotoFile.Text))
            {
                MessageBox.Show("Null fields!", "Error");
            }
            else if (!tbPassword.Text.Equals(tbPasswordAgain.Text))
            {
                MessageBox.Show("Passwords not equals!", "Error");
            }
            else
            {
                User user = Access.Select<User>().Where(a => a.Email.Equals(Email)).First();
                user.FullName = tbFullName.Text;
                user.Gender = cbGender.Text;
                user.DateOfBirth = dpBirth.Value;
                user.MobileNo = tbMobile.Text;
                user.Photo = tbPhotoFile.Text;
                Role role = (Role)cbRole.SelectedItem;
                user.RoleID = role.RoleID;
                user.Password = string.IsNullOrEmpty(tbPassword.Text) ? user.Password : tbPassword.Text;

                user.Edit();

                MessageBox.Show("Success update", "Success");

                this.Parent.Controls.Add(new ControlUserManagement());
                this.Dispose();
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Parent.Controls.Add(new ControlUserManagement());
            this.Dispose();
        }

        void LoadInfo()
        {
            cbRole.Items.AddRange(Access.Select<Role>().ToArray());
            cbRole.DisplayMember = "RoleName";
            cbGender.Items.AddRange(new string[] { "Male", "Female" });

            User user = Access.Select<User>().Where(a => a.Email.Equals(Email)).First();

            lbEmail.Text = user.Email;
            tbFullName.Text = user.FullName;
            cbGender.SelectedIndex = user.Gender.Equals("Male") ? 0 : 1;
            cbRole.Text = user.Role.RoleName;
            dpBirth.Value = user.DateOfBirth;
            tbMobile.Text = user.MobileNo;
            pbPhoto.Image = Image.FromFile(user.Photo);
            tbPhotoFile.Text = user.Photo;
        }
    }
}
