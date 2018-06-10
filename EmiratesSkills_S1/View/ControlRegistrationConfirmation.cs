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
    public partial class ControlRegistrationConfirmation : UserControl
    {
        public ControlRegistrationConfirmation()
        {
            InitializeComponent();
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            this.Parent.Controls.Add(new ControlCompetitorMenu());
            this.Dispose();
        }
    }
}
