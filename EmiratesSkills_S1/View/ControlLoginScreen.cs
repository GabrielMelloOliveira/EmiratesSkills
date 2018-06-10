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
    public partial class ControlLoginScreen : UserControl
    {
        public ControlLoginScreen()
        {
            InitializeComponent();
            tbEmail.Text = "sortiz12@ucla.edu";
            tbPassword.Text = "p2CeumlX6TL8";
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(tbEmail.Text) || string.IsNullOrEmpty(tbPassword.Text))
            {
                MessageBox.Show("Null fields!", "Error");
            }
            else
            {
                User user = Access.Select<User>().Where(a => a.Email.Equals(tbEmail.Text) && a.Password.Equals(tbPassword.Text)).FirstOrDefault();
                if (user != null)
                {
                    string RoleID = user.Role.RoleID.Trim();

                    CurrentFormModel.User = user;

                    if (RoleID.Equals("A"))
                    {
                        this.Parent.Controls.Add(new ControlAdministratorMenu());
                        this.Dispose();
                        FormModel.SCREEN = new ControlLoginScreen();
                    }
                    else if (RoleID.Equals("C"))
                    {
                        this.Parent.Controls.Add(new ControlCompetitorMenu());
                        this.Dispose();
                        FormModel.SCREEN = new ControlLoginScreen();
                    }
                    else if (RoleID.Equals("CE"))
                    {
                        this.Parent.Controls.Add(new ControlChiefExpertMenu());
                        this.Dispose();
                        FormModel.SCREEN = new ControlLoginScreen();
                    }
                }
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            Form form = (Form)this.Parent.Parent.Parent;
            form.NextView(new FormMainScreen());
        }
    }
}
