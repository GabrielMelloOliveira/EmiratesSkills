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
using System.IO;

namespace EmiratesSkills_S1.View
{
    public partial class ControlEditYourProfile : UserControl
    {
        public string[] Cities { get; set; }
        public Competitor Competitor { get; set; }
        public User User { get; set; }

        public ControlEditYourProfile(Competitor competitor)
        {
            InitializeComponent();
            this.Competitor = competitor;
            this.User = Access.Select<User>().First(a => a.Email.Equals(competitor.Email));
            LoadInfo();
        }

        void LoadInfo()
        {
            Cities = File.ReadAllLines("cities.txt");
            cbCity.Items.AddRange(Cities);

            lbEmail.Text = User.Email;
            lbEmiratesID.Text = Competitor.EmiratesID;
            tbFullName.Text = User.FullName;
            cbGender.SelectedIndex = User.Gender.Equals("Male") ? 0 : 1;
            dpBirth.Value = User.DateOfBirth;
            cbCity.Text = Competitor.City;
            tbMobile.Text = User.MobileNo;
            pbPhoto.Image = Image.FromFile(User.Photo);
            tbPhotoFile.Text = User.Photo;
        }

        bool ValidatePassword(string password)
        {
            if (password.ToCharArray().Count() < 6) return false;
            if (password.ToCharArray().Count(a => !Char.IsLetterOrDigit(a)) == 0) return false;
            if (password.ToCharArray().Count(a => Char.IsDigit(a)) == 0) return false;
            if (password.ToCharArray().Count(a => Char.IsUpper(a)) == 0) return false;

            return true;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(tbFullName.Text) ||
                string.IsNullOrEmpty(tbMobile.Text) || string.IsNullOrEmpty(tbPhotoFile.Text))
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
            else
            {
                User.FullName = tbFullName.Text;
                User.Gender = cbGender.SelectedText;
                User.DateOfBirth = dpBirth.Value;
                Competitor.City = cbCity.SelectedText;
                User.MobileNo = tbMobile.Text;
                User.Photo = tbPhotoFile.Text;

                Competitor.Edit();
                User.Edit();

                MessageBox.Show("Success update", "Success");
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            //TODO: Cancel
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
    }
}
