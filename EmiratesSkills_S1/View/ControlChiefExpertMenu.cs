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
    public partial class ControlChiefExpertMenu : UserControl
    {
        public ControlChiefExpertMenu()
        {
            InitializeComponent();
            btnCompetitorsStatus.Click += (s, e) => { this.Parent.Controls.Add(new ControlCompetitorsStatus()); this.Dispose(); FormModel.SCREEN = new ControlChiefExpertMenu(); };
            btnCompetitorsMarking.Click += (s, e) => { this.Parent.Controls.Add(new ControlCompetitorsMarking()); this.Dispose(); FormModel.SCREEN = new ControlChiefExpertMenu(); };
            btnResults.Click += (s, e) => { this.Parent.Controls.Add(new ControlResultOverview()); this.Dispose(); FormModel.SCREEN = new ControlChiefExpertMenu(); };
        }
    }
}
