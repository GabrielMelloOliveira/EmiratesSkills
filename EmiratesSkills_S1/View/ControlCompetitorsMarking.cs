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
    public partial class ControlCompetitorsMarking : UserControl
    {
        public BindingList<MarkingGrid> Results { get; set; }

        public ControlCompetitorsMarking()
        {
            InitializeComponent();

            Results = new BindingList<MarkingGrid>();

            cbCompetition.Items.AddRange(Access.Select<Competition>().ToArray());
            cbCompetition.DisplayMember = "CompetitionName";
            cbSkill.Items.AddRange(Access.Select<Skill>().ToArray());
            cbSkill.DisplayMember = "SkillName";
        }

        void Filter()
        {
            Results = new BindingList<MarkingGrid>();

            Competition selectCompetition = (Competition)cbCompetition.SelectedItem;
            Skill selectSkill = (Skill)cbSkill.SelectedItem;

            List<CompetitionSkillPerson> ListCSP = Access.Select<CompetitionSkillPerson>()
                .Where(a => a.CompetitionID == selectCompetition.CompetitionID
                && a.SkillID == selectSkill.SkillID)
                .ToList();

            foreach (var item in ListCSP)
            {
                if (Access.Select<Competitor>().Where(a => a.Email.Equals(item.Email)).FirstOrDefault() != null)
                {
                    int CompetitorID = Access.Select<Competitor>().Where(a => a.Email.Equals(item.Email)).FirstOrDefault().RegistrationID;

                    if (Access.Select<FinalScore>().Where(a => a.CompetitorID == CompetitorID).FirstOrDefault() == null)
                    {
                        Results.Add(new MarkingGrid(CompetitorID)
                        {
                            Score = " - ",
                            Name = Access.Select<User>().Where(a => a.Email.Equals(item.Email)).First().FullName,
                            Category = selectSkill.SkillName,
                            Competition = selectCompetition.CompetitionName
                        });
                    }
                }
            }

            grid.DataSource = Results;
        }

        private void btnView_Click(object sender, EventArgs e)
        {
            Filter();
        }

        private void grid_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 4)
            {
                MarkingGrid marking = (MarkingGrid)grid.Rows[e.RowIndex].DataBoundItem;

                Form form = new FormAddScore(marking.Name, marking.Category, marking.GetCompetitorID());
                DialogResult result = form.ShowDialog();
                if (result == DialogResult.OK)
                {
                    Filter();
                }
            }
        }
    }

    public class MarkingGrid
    {
        private int CompetitorID { get; set; }

        public MarkingGrid(int competitorID)
        {
            CompetitorID = competitorID;
        }

        public string Name { get; set; }
        public string Score { get; set; }
        public string Category { get; set; }
        public string Competition { get; set; }

        public int GetCompetitorID() => CompetitorID;
    }
}
