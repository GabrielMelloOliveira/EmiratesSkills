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
    public partial class FormModel : Form
    {
        public static UserControl SCREEN { get; set; }

        public FormModel(string Title, Form form, UserControl Control)
        {
            InitializeComponent();

            this.ApplyStyle();
            this.Text += " - " + Title;
            this.lbHeader.Text = "EmiratesSkills National Competitions";

            this.btnBack.Click += delegate
            {
                this.panelHome.Controls.Clear();
                this.panelHome.Controls.Add(SCREEN);
            };
            this.btnLogout.Click += delegate { this.Hide(); form.Show(); };

            this.panelHome.Controls.Add(Control);
            Control.Dock = DockStyle.Fill;
            this.panelHeader.BackColor = Color.FromArgb(18, 128, 155);
            this.panelFooter.BackColor = Color.FromArgb(18, 128, 155);

            Timer timer = new Timer();
            timer.Tick += Timer_Tick;
            timer.Interval = 60000;
            timer.Start();
            DateTime competition = new DateTime(2018, 06, 10);
            TimeSpan result = competition - DateTime.Now;
            lbTime.Text = $"{result.Days} days {result.Hours} hours and {result.Minutes} minutes until the WorldSkills competition starts";
        }

        public FormModel(string Title, string Header, EventHandler Back, UserControl Control)
        {
            InitializeComponent();
            this.ApplyStyle();
            this.Text += " - " + Title;
            this.lbHeader.Text = Header;

            this.btnBack.Click -= Back;
            this.btnBack.Click += Back;

            this.panelHome.Controls.Add(Control);
            Control.Dock = DockStyle.Fill;
            this.panelHeader.BackColor = Color.FromArgb(18, 128, 155);
            this.panelFooter.BackColor = Color.FromArgb(18, 128, 155);

            Timer timer = new Timer();
            timer.Tick += Timer_Tick;
            timer.Interval = 60000;
            timer.Start();
            DateTime competition = new DateTime(2018, 06, 10);
            TimeSpan result = competition - DateTime.Now;
            lbTime.Text = $"{result.Days} days {result.Hours} hours and {result.Minutes} minutes until the WorldSkills competition starts";
        }

        public UserControl BackScreen(UserControl control)
        {
            return control;
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            DateTime competition = new DateTime(2018, 06, 10);
            TimeSpan result = competition - DateTime.Now;
            lbTime.Text = $"{result.Days} days {result.Hours} hours and {result.Minutes} minutes until the WorldSkills competition starts";
        }

        public void HideForm() => this.Hide();
    }
}
