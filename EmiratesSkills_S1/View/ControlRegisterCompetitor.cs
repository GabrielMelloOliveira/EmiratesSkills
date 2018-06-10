using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
using EmiratesSkills_S1.Model;

namespace EmiratesSkills_S1.View
{
    public partial class ControlRegisterCompetitor : UserControl
    {
        public string[] Schools { get; set; }
        public string[] Universities { get; set; }

        public ControlRegisterCompetitor()
        {
            InitializeComponent();
            StartEvents();
            LoadInformations();
        }

        bool ValidatePassword(string password)
        {
            if (password.ToCharArray().Count(a => !Char.IsLetterOrDigit(a)) == 0) return false;
            if (password.ToCharArray().Count(a => Char.IsDigit(a)) == 0) return false;
            if (password.ToCharArray().Count(a => Char.IsUpper(a)) == 0) return false;
            if (password.ToCharArray().Count() < 6) return false;

            return true;
        }

        bool ValidateEmail(string email)
        {
            try
            {
                if (!email.Contains("@")) return false;
                if (!email.Contains(".")) return false;

                string[] parts = email.Split('@');
                string[] parts2 = parts[1].Split('.');

                if (parts2[0].ToCharArray().Count(a => Char.IsLetterOrDigit(a)) == 0) return false;
                if (parts2[1].ToCharArray().Count(a => Char.IsLetterOrDigit(a)) == 0) return false;

                return true;
            }
            catch
            {
                return false;
            }
        }

        private void btnRegister_Click(object sender, EventArgs e)
        {
            User user = new User();
            cbGender.SelectedIndex = 0;

            if (string.IsNullOrEmpty(tbEmail.Text) || string.IsNullOrEmpty(tbPassword.Text) || string.IsNullOrEmpty(tbPasswordAgain.Text) || string.IsNullOrEmpty(tbFullName.Text) ||
                string.IsNullOrEmpty(tbEmiratesID.Text) || string.IsNullOrEmpty(tbMobile.Text) || string.IsNullOrEmpty(tbPhoto.Text) || string.IsNullOrEmpty(tbID.Text))
            {
                MessageBox.Show("Null fields!", "Error");
            }
            else if (dpBirth.Value > DateTime.Now.AddYears(-22))
            {
                MessageBox.Show("The competitor must be less than 22 years old at the time of registration!", "Error");
            }
            else if (!tbPassword.Text.Equals(tbPasswordAgain.Text))
            {
                MessageBox.Show("Passwords not equals!", "Error");
            }
            else if (!ValidatePassword(tbPassword.Text))
            {
                MessageBox.Show("Passwords invalid!", "Error");
            }
            else if (!ValidateEmail(tbEmail.Text))
            {
                MessageBox.Show("Passwords invalid!", "Error");
            }
            else if (!tbEmail.Text.Contains("@"))
            {
                MessageBox.Show("Invalid Email!", "Error");
            }
            else
            {
                user.Email = tbEmail.Text; 
                user.FullName = tbFullName.Text;
                user.Gender = cbGender.Text;
                user.Password = tbPassword.Text;
                user.RoleID = "C";
                user.Photo = tbPhoto.Text;
                user.DateOfBirth = dpBirth.Value;
                user.MobileNo = tbMobile.Text;
                CurrentFormModel.User = user;
                user.Add();
                MessageBox.Show("User registered", "Success!");
                this.Parent.Controls.Add(new ControlRegistrationConfirmation());
                this.Dispose();
            }
        }

        void StartEvents()
        {
            rbSchool.CheckedChanged += CheckedChanged;
            rbUniversity_College.CheckedChanged += CheckedChanged;
            rbOther.CheckedChanged += CheckedChanged;
        }

        private void CheckedChanged(object sender, EventArgs e)
        {
            if (rbSchool.Checked)
            {
                cbAffiliation.Items.Clear();
                cbAffiliation.Items.AddRange(Schools);
                cbAffiliation.Enabled = true;
                tbOther.Enabled = false;
            }
            else if (rbUniversity_College.Checked)
            {
                cbAffiliation.Items.Clear();
                cbAffiliation.Items.AddRange(Universities);
                cbAffiliation.Enabled = true;
                tbOther.Enabled = false;
            }
            else
            {
                cbAffiliation.Enabled = false;
                tbOther.Enabled = true;
            }
        }

        void LoadInformations()
        {
            cbAffiliation.Items.Clear();
            Schools = File.ReadAllLines("schools.txt");
            Universities = File.ReadAllLines("universities.txt");
            rbSchool.Checked = true;
            cbAffiliation.Items.AddRange(Schools);
            tbOther.Enabled = false;
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            
        }

        private void btnBrowsePhoto_Click(object sender, EventArgs e)
        {
            OpenFileDialog open = new OpenFileDialog();
            open.DefaultExt = ".jpg";
            DialogResult result = open.ShowDialog();
            if (result == DialogResult.OK)
            {
                tbPhoto.Text = open.FileName;
            }
            pbPhoto.Image = Image.FromFile(open.FileName);
        }

        private void btnBrowseID_Click(object sender, EventArgs e)
        {
            OpenFileDialog open = new OpenFileDialog();
            open.DefaultExt = ".jpg";
            DialogResult result = open.ShowDialog();
            if (result == DialogResult.OK)
            {
                tbID.Text = open.FileName;
            }
        }
    }
}
