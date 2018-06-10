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
    public partial class ControlAbout : UserControl
    {
        public ControlAbout()
        {
            InitializeComponent();
            pbMap.Click += delegate { new FormMap().ShowDialog(); };
        }
    }
}
