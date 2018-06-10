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
    public partial class ControlManageCompetitions : UserControl
    {
        public BindingList<CompetitionGrid> Competitions { get; set; }
        public CompetitionGrid SelectedItem { get; set; }

        public ControlManageCompetitions()
        {
            InitializeComponent();
            gridCompetitions.SelectionChanged += GridCompetitions_SelectionChanged;
            SelectedItem = null;
            Competitions = new BindingList<CompetitionGrid>();
            LoadInfo();
        }

        private void GridCompetitions_SelectionChanged(object sender, EventArgs e)
        {
            if (gridCompetitions.SelectedRows.Count > 0)
            {
                SelectedItem = (CompetitionGrid)gridCompetitions.SelectedRows[0].DataBoundItem;
                tbName.Text = SelectedItem.Name;
                dpStart.Value = SelectedItem.StartDate;
                dpEnd.Value = SelectedItem.EndDate;
                tbDetails.Text = SelectedItem.Details;
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (SelectedItem != null)
            {
                int ID_LINQ = SelectedItem.GetID();
                Competition competition = Access.Select<Competition>().Where(a => a.CompetitionID == ID_LINQ).First();

                competition.CompetitionName = tbName.Text;
                competition.CompetitionStartDate = dpStart.Value;
                competition.CompetitionEndDate = dpEnd.Value;
                competition.CompetitionDescription = tbDetails.Text;

                competition.Edit();

                MessageBox.Show("Update with success!", "Success");

                LoadInfo();
            }
        }

        private void btnAddNew_Click(object sender, EventArgs e)
        {
            Competition competition = new Competition();
            competition.CompetitionName = tbName.Text;
            competition.CompetitionStartDate = dpStart.Value;
            competition.CompetitionEndDate = dpEnd.Value;
            competition.CompetitionDescription = tbDetails.Text;
            competition.Add();

            MessageBox.Show("Competition added with success!", "Success");

            LoadInfo();
        }

        void LoadInfo()
        {
            Competitions.Clear();

            foreach (var item in Access.Select<Competition>())
            {
                Competitions.Add(new CompetitionGrid(item.CompetitionID) { Name = item.CompetitionName, StartDate = item.CompetitionStartDate, EndDate = item.CompetitionEndDate, Details = item.CompetitionDescription });
            }

            gridCompetitions.DataSource = Competitions;
        }
    }

    public class CompetitionGrid
    {
        public CompetitionGrid(int ID)
        {
            this.ID = ID;
        }

        public int GetID() => ID;

        public string Name { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public string Details { get; set; }
        private int ID { get; set; }
    }
}
