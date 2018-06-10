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
    public partial class FormEmailList : Form
    {
        public List<User> Users { get; set; }

        public FormEmailList(List<User> users)
        {
            InitializeComponent();
            Users = users;
            BuildEmailList();
        }

        void BuildEmailList()
        {
            StringBuilder builder = new StringBuilder();

            foreach (var item in Users)
            {
                builder.Append($"\"{item.FullName}\" <{item.Email}>; ");
            }

            tbEmailList.Text = builder.ToString();
        }
    }
}
