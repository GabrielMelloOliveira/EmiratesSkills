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
    public partial class ControlFindOutMore : UserControl
    {
        public ControlFindOutMore()
        {
            InitializeComponent();
            this.ApplyStyle();
        }

        private void btnESNC_Click(object sender, EventArgs e)
        {
            this.Parent.Controls.Add(new ControlAbout());
            this.Dispose();
        }

        private void btnSkillsDetails_Click(object sender, EventArgs e)
        {
            this.Parent.Controls.Add(new ControlAbout());
            this.Dispose();
        }
    }
}
