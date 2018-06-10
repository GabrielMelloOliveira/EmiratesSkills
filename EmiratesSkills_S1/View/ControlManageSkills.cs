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
    public partial class ControlManageSkills : UserControl
    {
        public BindingList<SkillGrid> Skills { get; set; }
        public SkillGrid SelectedItem { get; set; }

        public ControlManageSkills()
        {
            InitializeComponent();
            grid.SelectionChanged += Grid_SelectionChanged;
            SelectedItem = null;
            Skills = new BindingList<SkillGrid>();
            LoadInfo();
        }

        private void LoadInfo()
        {
            Skills.Clear();

            foreach (var item in Access.Select<Skill>())
            {
                Skills.Add(new SkillGrid(item.SkillID) { SkillName = item.SkillName, Description = item.SkillDescription });
            }

            grid.DataSource = Skills;

            lbCount.Text = Skills.Count.ToString();
        }

        private void Grid_SelectionChanged(object sender, EventArgs e)
        {
            if (grid.SelectedRows.Count > 0)
            {
                SelectedItem = (SkillGrid)grid.SelectedRows[0].DataBoundItem;
                tbName.Text = SelectedItem.SkillName;
                tbDescription.Text = SelectedItem.Description;
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (SelectedItem != null)
            {
                int ID_LINQ = SelectedItem.GetID();
                Skill skill = Access.Select<Skill>().Where(a => a.SkillID == ID_LINQ).First();

                skill.SkillName = tbName.Text;
                skill.SkillDescription = tbDescription.Text;

                skill.Edit();

                MessageBox.Show("Update with success!", "Success");

                LoadInfo();
            }
        }

        private void btnAddNew_Click(object sender, EventArgs e)
        {
            Skill skill = new Skill();
            skill.SkillName = tbName.Text;
            skill.SkillDescription = tbDescription.Text;
            skill.Add();

            MessageBox.Show("Skill added with success!", "Success");

            LoadInfo();
        }
    }

    public class SkillGrid
    {
        public SkillGrid(int ID)
        {
            this.ID = ID;
        }

        public int GetID() => ID;

        public string SkillName { get; set; }
        public string Description { get; set; }
        private int ID { get; set; }
    }
}
