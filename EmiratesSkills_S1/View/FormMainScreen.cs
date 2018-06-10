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
    public partial class FormMainScreen : Form
    {
        public FormMainScreen()
        {
            //TODO: Calculate Time
            InitializeComponent();
            btnLogin.Click += (s, e) => this.NextView(new FormModel("Login", new FormMainScreen(), new ControlLoginScreen()));
            btnCompete.Click += (s, e) => this.NextView(new FormModel("Register as a Competitor", new FormMainScreen(), new ControlRegisterCompetitor()));
            btnFindOutMore.Click += (s, e) => this.NextView(new FormModel("Find Out More Inforamtion", new FormMainScreen(), new ControlFindOutMore()));
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

        private void Timer_Tick(object sender, EventArgs e)
        {
            DateTime competition = new DateTime(2018, 06, 10);
            TimeSpan result = competition - DateTime.Now;
            lbTime.Text = $"{result.Days} days {result.Hours} hours and {result.Minutes} minutes until the WorldSkills competition starts";
        }
    }
}
