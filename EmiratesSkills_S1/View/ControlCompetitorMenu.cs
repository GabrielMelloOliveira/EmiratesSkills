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
    public partial class ControlCompetitorMenu : UserControl
    {
        public ControlCompetitorMenu()
        {
            InitializeComponent();
            btnEdit.Click += (s, e) => { this.Parent.Controls.Add(new ControlEditYourProfile(Access.Select<Competitor>().Where(a => a.Email.Equals(CurrentFormModel.User.Email)).First())); this.Dispose(); FormModel.SCREEN = new ControlCompetitorMenu(); };
            pbPhoto.Image = Image.FromFile(CurrentFormModel.User.Photo);
            lbFullName.Text = CurrentFormModel.User.FullName;
        }

        private void btnAdditionalInformation_Click(object sender, EventArgs e)
        {
            Form form = new FormAdditionalInformation();
            form.ShowDialog();
        }
    }
}
