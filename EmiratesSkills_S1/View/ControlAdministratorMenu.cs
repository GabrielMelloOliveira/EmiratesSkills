using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace EmiratesSkills_S1.View
{
    public partial class ControlAdministratorMenu : UserControl
    {
        public ControlAdministratorMenu()
        {
            InitializeComponent();
            btnUsers.Click += (s, e) => { this.Parent.Controls.Add(new ControlUserManagement()); this.Dispose(); FormModel.SCREEN = new ControlAdministratorMenu(); };
            btnCompetitionsAndSkillsDetails.Click += (s, e) => { this.Parent.Controls.Add(new ControlCompetitionsAndSkills()); this.Dispose(); FormModel.SCREEN = new ControlAdministratorMenu(); };
            btnResults.Click += (s, e) => { this.Parent.Controls.Add(new ControlResultOverview()); this.Dispose(); FormModel.SCREEN = new ControlAdministratorMenu(); };
            btnCompetitors.Click += (s, e) => { this.Parent.Controls.Add(new ControlCompetitorsStatus()); this.Dispose(); FormModel.SCREEN = new ControlAdministratorMenu(); }; 
            btnManageCompetitions.Click += (s, e) => { this.Parent.Controls.Add(new ControlManageCompetitions()); this.Dispose(); FormModel.SCREEN = new ControlAdministratorMenu(); };
            btnManageSkills.Click += (s, e) => { this.Parent.Controls.Add(new ControlManageSkills()); this.Dispose(); FormModel.SCREEN = new ControlAdministratorMenu(); }; 
        }
    }
}
