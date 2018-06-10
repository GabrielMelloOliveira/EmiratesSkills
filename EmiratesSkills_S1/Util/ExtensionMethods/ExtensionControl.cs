using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace EmiratesSkills_S1
{
    public static class ExtensionControl
    {
        public static void ApplyStyle(this UserControl control)
        {
            //TODO: Style
            control.BackColor = Color.White;
        }
    }
}
