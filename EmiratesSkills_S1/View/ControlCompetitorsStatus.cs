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
    public partial class ControlCompetitorsStatus : UserControl
    {
        public BindingList<CompetitorsGrid> ListGrid { get; set; }

        public ControlCompetitorsStatus()
        {
            InitializeComponent();
            //LoadInfo();

            btnView.Click += BtnView_Click;
            btnExportToExcel.Click += BtnExportToExcel_Click;

            ListGrid = new BindingList<CompetitorsGrid>();

            cbCompetition.Items.AddRange(Access.Select<Competition>().ToArray());
            cbCompetition.DisplayMember = "CompetitionName";
            cbSkill.Items.AddRange(Access.Select<Skill>().ToArray());
            cbSkill.DisplayMember = "SkillName";
        }

        private void BtnView_Click(object sender, EventArgs e)
        {
            ListGrid.Clear();

            Competition comp = (Competition)cbCompetition.SelectedItem;

            foreach (var item in Access.Select<CompetitionSkillPerson>().Where(a => a.CompetitionID == comp.CompetitionID))
            {
                ListGrid.Add(new CompetitorsGrid()
                {
                    Name = Access.Select<User>().Where(a => a.Email.Equals(item.Email)).First().FullName,
                    Photo = Access.Select<User>().Where(a => a.Email.Equals(item.Email)).First().Photo,
                    Mobile = Access.Select<User>().Where(a => a.Email.Equals(item.Email)).First().MobileNo,
                    Competition = comp.CompetitionName,
                    Category = "",
                    Status = ""
                });
            }

            gridCompetitors.DataSource = ListGrid;
        }

        private void BtnExportToExcel_Click(object sender, EventArgs e)
        {
            SaveFileDialog saveFile = new SaveFileDialog();
            DialogResult result = saveFile.ShowDialog();
            if (result == DialogResult.OK)
            {
                File.Create(saveFile.FileName);
            }
        }

        void LoadInfo()
        {
            cbCompetition.Items.AddRange(Access.Select<Competition>().ToArray());
            cbSkill.Items.AddRange(Access.Select<Skill>().ToArray());
            Competition c = new Competition();
            
            foreach (var item in Access.Select<Competitor>())
            {
                ListGrid.Add(new CompetitorsGrid()
                {
                    
                });
            }

            gridCompetitors.DataSource = ListGrid;
        }
    }

    public class CompetitorsGrid
    {
        public string Photo { get; set; }
        public string Name { get; set; }
        public string Mobile { get; set; }
        public string Category { get; set; }
        public string Competition { get; set; }
        public string Status { get; set; }
    }
}
