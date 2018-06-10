using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace EmiratesSkills_S1
{
    public static class ExtensionForms
    {
        public static void ApplyStyle (this Form form)
        {
            //TODO: Style
            form.Text = "EmiratesSkills";
            form.ShowIcon = false;
        }

        public static void NextView(this Form form, Form newForm)
        {
            form.Hide();
            newForm.Show();
        }
    }
}
