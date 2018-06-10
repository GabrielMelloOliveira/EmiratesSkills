using EmiratesSkills_S1.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace EmiratesSkills_S1.View
{
    public partial class FormAddScore : Form
    {
        public int CompetitorID { get; set; }

        public FormAddScore(string fullname, string category, int competitorID)
        {
            InitializeComponent();

            lbFullName.Text = fullname;
            lbCategory.Text = category;
            CompetitorID = competitorID;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            FinalScore final = new FinalScore();
            final.CompetitorID = CompetitorID;
            final.Score = Convert.ToDecimal(int.Parse(tbScore.Text));

            final.Add();

            this.DialogResult = DialogResult.OK;

            this.Close();
        }
    }
}
