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
    public partial class FormAdd : Form
    {
        public FormAdd(Competition defaultType, List<Skill> objects)
        {
            InitializeComponent();
            lbHeader.Text = "Add Skill to Selected Competition";
            lbDefaultType.Text = "Competition: " + defaultType.CompetitionName;
            lbText.Text = $"List of all the skills that are not available in {defaultType.CompetitionName}";
            lbType.Text = "Skills:";
            cbType.Items.AddRange(objects.ToArray());
            cbType.DisplayMember = "SkillName";
            btnAdd.Click += delegate
            {
                int index = cbType.SelectedIndex;
                Skill skillSelected = (Skill)cbType.SelectedItem;

                cbType.Items.RemoveAt(index);

                CompetitionSkill cs = new CompetitionSkill();
                cs.CompetitionID = defaultType.CompetitionID;
                cs.SkillID = skillSelected.SkillID;

                cs.Add();

                MessageBox.Show("Added with success!", "Success");

                this.DialogResult = DialogResult.OK;

                this.Close();
            };
        }

        public FormAdd(Competition defaultTypeRoot, Skill defaultType, List<User> objects)
        {
            InitializeComponent();
            lbHeader.Text = "Add Expert to Selected Skill";
            lbDefaultType.Text = "Skill: " + defaultType.SkillName;
            lbText.Text = $"List of all the experts that are not available in {defaultType.SkillName}";
            lbType.Text = "Experts:";
            cbType.Items.AddRange(objects.ToArray());
            cbType.DisplayMember = "FullName";
            btnAdd.Click += delegate
            {
                int index = cbType.SelectedIndex;
                User expertSelected = (User)cbType.SelectedItem;

                cbType.Items.RemoveAt(index);

                CompetitionSkillPerson csp = new CompetitionSkillPerson();
                csp.CompetitionID = defaultTypeRoot.CompetitionID;
                csp.SkillID = defaultType.SkillID;
                csp.Email = expertSelected.Email;

                csp.Add();

                MessageBox.Show("Added with success!", "Success");

                this.DialogResult = DialogResult.OK;

                this.Close();
            };
        }
    }
}
