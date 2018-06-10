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
    public partial class ControlResultOverview : UserControl
    {
        public BindingList<ResultsGrid> Results { get; set; }

        public ControlResultOverview()
        {
            InitializeComponent();

            Results = new BindingList<ResultsGrid>();

            cbCompetition.Items.AddRange(Access.Select<Competition>().ToArray());
            cbCompetition.DisplayMember = "CompetitionName";
            cbSkill.Items.AddRange(Access.Select<Skill>().ToArray());
            cbSkill.DisplayMember = "SkillName";
        }

        private void btnView_Click(object sender, EventArgs e)
        {
            Results = new BindingList<ResultsGrid>();

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

                    if (Access.Select<FinalScore>().Where(a => a.CompetitorID == CompetitorID).FirstOrDefault() != null)
                    {
                        Results.Add(new ResultsGrid()
                        {
                            Score = Access.Select<FinalScore>().Where(a => a.CompetitorID == CompetitorID).First().Score,
                            Name = Access.Select<User>().Where(a => a.Email.Equals(item.Email)).First().FullName,
                            Category = selectSkill.SkillName,
                            Competition = selectCompetition.CompetitionName
                        });
                    }
                }
            }

            BindingList<ResultsGrid> NewResults = Results;

            Results = new BindingList<ResultsGrid>();

            for (int i = 0; i < NewResults.Count; i++)
            {
                ResultsGrid result = NewResults.OrderBy(a => a.Score).ToArray()[i];
                result.Ranking = i;
                Results.Add(result);
            }

            grid.DataSource = Results;
        }
    }

    public class ResultsGrid
    {
        public int Ranking { get; set; }
        public decimal Score { get; set; }
        public string Name { get; set; }
        public string Category { get; set; }
        public string Competition { get; set; }
    }
}
