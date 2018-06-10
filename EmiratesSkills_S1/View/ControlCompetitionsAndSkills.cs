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
    public partial class ControlCompetitionsAndSkills : UserControl
    {
        public BindingList<GCompetitions> ListGCompetitions { get; set; }
        public BindingList<GSkills> ListGSkills { get; set; }
        public BindingList<GExperts> ListGExperts { get; set; }

        public ControlCompetitionsAndSkills()
        {
            InitializeComponent();

            ListGCompetitions = new BindingList<GCompetitions>();
            ListGSkills = new BindingList<GSkills>();
            ListGExperts = new BindingList<GExperts>();

            LoadInfo();

            btnAddSkills.Click += delegate
            {
                if (gridCompetitions.SelectedRows.Count > 0)
                {
                    GCompetitions gCompetitions = (GCompetitions)gridCompetitions.SelectedRows[0].DataBoundItem;
                    int CompetitionID = gCompetitions.GetGridObject().CompetitionID;

                    List<int> List1 = Access.Select<CompetitionSkill>().Where(a => a.CompetitionID == CompetitionID).Select(a => a.SkillID).ToList();

                    List<Skill> newSkills = new List<Skill>();

                    foreach (var item in Access.Select<Skill>())
                    {
                        if (!List1.Contains(item.SkillID))
                        {
                            newSkills.Add(item);
                        }
                    }

                    Form form = new FormAdd(gCompetitions.GetGridObject(), newSkills);
                    DialogResult result = form.ShowDialog();
                    if (result == DialogResult.OK)
                    {
                        ListGSkills = new BindingList<GSkills>();
                        ListGExperts = new BindingList<GExperts>();
                        gridSkills.DataSource = ListGSkills;
                        gridExperts.DataSource = ListGExperts;
                        gridCompetitions.ClearSelection();
                    }
                }
            };

            btnAddExperts.Click += delegate
            {
                if (gridSkills.SelectedRows.Count > 0)
                {
                    GCompetitions gCompetitions = (GCompetitions)gridCompetitions.SelectedRows[0].DataBoundItem;
                    int CompetitionID = gCompetitions.GetGridObject().CompetitionID;
                    GSkills gSkills = (GSkills)gridSkills.SelectedRows[0].DataBoundItem;
                    int SkillID = gSkills.GetGridObject().SkillID;

                    List<string> List1 = Access.Select<CompetitionSkillPerson>().Where(a => a.CompetitionID == CompetitionID && a.SkillID == SkillID).Select(a => a.Email).ToList();

                    List<User> newUser = new List<User>();

                    foreach (var item in Access.Select<User>().Where(a => a.RoleID.Trim().Equals("E")))
                    {
                        if (!List1.Contains(item.Email))
                        {
                            newUser.Add(item);
                        }
                    }

                    Form form = new FormAdd(gCompetitions.GetGridObject(), gSkills.GetGridObject(), newUser);
                    DialogResult result = form.ShowDialog();
                    if (result == DialogResult.OK)
                    {
                        ListGExperts = new BindingList<GExperts>();
                        gridExperts.DataSource = ListGExperts;
                    }
                }
            };

            btnRemoveSkills.Click += delegate
            {
                if (gridSkills.SelectedRows.Count > 0)
                {
                    GSkills gSkills = (GSkills)gridSkills.SelectedRows[0].DataBoundItem;
                    GCompetitions gCompetitions = (GCompetitions)gridCompetitions.SelectedRows[0].DataBoundItem;

                    ListGSkills.Remove(gSkills);
                    ListGExperts = new BindingList<GExperts>();

                    int CompetitionID = gCompetitions.GetGridObject().CompetitionID;
                    int SkillID = gSkills.GetGridObject().SkillID;

                    List<CompetitionSkillPerson> List1 = Access.Select<CompetitionSkillPerson>()
                        .Where(a => a.CompetitionID == CompetitionID && 
                                a.SkillID == SkillID)
                        .ToList();
                    foreach (var item in List1) item.Delete();

                    List<CompetitionSkill> List2 = Access.Select<CompetitionSkill>()
                        .Where(a => a.CompetitionID == CompetitionID &&
                                a.SkillID == SkillID)
                        .ToList();
                    foreach (var item in List2) item.Delete();

                    lbCountSkills.Text = ListGSkills.Count.ToString();
                    lbCountExperts.Text = "0";
                }
            };

            btnRemoveExperts.Click += delegate
            {
                if (gridExperts.SelectedRows.Count > 0)
                {
                    GExperts gExperts = (GExperts)gridExperts.SelectedRows[0].DataBoundItem;
                    GSkills gSkills = (GSkills)gridSkills.SelectedRows[0].DataBoundItem;
                    GCompetitions gCompetitions = (GCompetitions)gridCompetitions.SelectedRows[0].DataBoundItem;

                    ListGExperts.Remove(gExperts);

                    int CompetitionID = gCompetitions.GetGridObject().CompetitionID;
                    int SkillID = gSkills.GetGridObject().SkillID;
                    string Email = gExperts.GetGridObject().Email;

                    List<CompetitionSkillPerson> List1 = Access.Select<CompetitionSkillPerson>()
                        .Where(a => a.CompetitionID == CompetitionID &&
                                a.SkillID == SkillID &&
                                a.Email.Equals(Email))
                        .ToList();
                    foreach (var item in List1) item.Delete();

                    lbCountExperts.Text = ListGExperts.Count.ToString();
                }
            };
        }

        void LoadInfo()
        {
            Access.Select<Competition>().ToList().ForEach(a => ListGCompetitions.Add(new GCompetitions(a)));

            gridCompetitions.DataSource = ListGCompetitions;

            lbCountCompetitions.Text = ListGCompetitions.Count.ToString();

            cbChiefExpert.Items.AddRange(Access.Select<User>().Where(a => a.RoleID.Trim().Equals("CE")).ToArray());
            cbChiefExpert.DisplayMember = "FullName";
            cbWorkshopManager.Items.AddRange(Access.Select<User>().Where(a => a.RoleID.Trim().Equals("WM")).ToArray());
            cbWorkshopManager.DisplayMember = "FullName";
        }

        private void gridCompetitions_SelectionChanged(object sender, EventArgs e)
        {
            if (gridCompetitions.SelectedRows.Count > 0)
            {
                ListGSkills = new BindingList<GSkills>();

                GCompetitions gCompetitions = (GCompetitions)gridCompetitions.SelectedRows[0].DataBoundItem;

                int CompetitionID = gCompetitions.GetGridObject().CompetitionID;

                foreach (var item in Access.Select<CompetitionSkill>().Where(a => a.CompetitionID == CompetitionID))
                {
                    ListGSkills.Add(new GSkills(item.Skill));
                }

                gridSkills.DataSource = ListGSkills;

                lbCountSkills.Text = ListGSkills.Count.ToString();

                ListGExperts = new BindingList<GExperts>();
                gridExperts.DataSource = ListGExperts;

                gridSkills.ClearSelection();
            }
        }

        private void gridSkills_SelectionChanged(object sender, EventArgs e)
        {
            if (gridSkills.SelectedRows.Count > 0)
            {
                ListGExperts = new BindingList<GExperts>();

                GSkills gSkills = (GSkills)gridSkills.SelectedRows[0].DataBoundItem;
                GCompetitions gCompetitions = (GCompetitions)gridCompetitions.SelectedRows[0].DataBoundItem;

                int CompetitionID = gCompetitions.GetGridObject().CompetitionID;
                int SkillID = gSkills.GetGridObject().SkillID;

                foreach (var item in Access.Select<CompetitionSkillPerson>().Where(a => a.CompetitionID == CompetitionID && a.SkillID == SkillID))
                {
                    User user = Access.Select<User>().Where(a => a.Email.Equals(item.Email)).First();
                    if (user.RoleID.Trim().Equals("E"))
                    {
                        ListGExperts.Add(new GExperts(user));
                    }
                }

                gridExperts.DataSource = ListGExperts;

                lbCountExperts.Text = ListGExperts.Count.ToString();
            }
        }
    }

    public class GCompetitions
    {
        public GCompetitions(Competition objectG)
        {
            Text = objectG.CompetitionName;
            GridObject = objectG;
        }

        public string Text { get; set; }
        private Competition GridObject { get; set; }

        public Competition GetGridObject() => GridObject;
    }

    public class GSkills
    {
        public GSkills(Skill objectG)
        {
            Text = objectG.SkillName;
            GridObject = objectG;
        }

        public string Text { get; set; }
        private Skill GridObject { get; set; }

        public Skill GetGridObject() => GridObject;
    }

    public class GExperts
    {
        public GExperts(User objectG)
        {
            Text = objectG.FullName;
            GridObject = objectG;
        }

        public string Text { get; set; }
        private User GridObject { get; set; }

        public User GetGridObject() => GridObject;
    }
}
