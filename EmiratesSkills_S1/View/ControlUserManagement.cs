using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using EmiratesSkills_S1.Model;

namespace EmiratesSkills_S1.View
{
    public partial class ControlUserManagement : UserControl
    {
        public BindingList<UserGrid> Users { get; set; }

        public ControlUserManagement()
        {
            InitializeComponent();
            Users = new BindingList<UserGrid>();
            Load_Grid();
            Load_ComboBoxs();
        }

        void Load_Grid()
        {
            Access.Select<User>().ToList().ForEach(a => Users.Add(new UserGrid(a)));
            grid.DataSource = Users;
            lbTotalUsers.Text = Users.Count.ToString();
        }

        void Load_ComboBoxs()
        {
            cbRole.Items.Add("All Roles");
            cbRole.Items.AddRange(Access.Select<Role>().ToArray());
            cbRole.DisplayMember = "RoleName";

            cbSort.Items.AddRange(new string[] { "FullName", "Email" });
        }

        private void btnAddNewUser_Click(object sender, EventArgs e)
        {
            this.Parent.Controls.Add(new ControlAddNewUser());
            this.Dispose();
        }

        private void grid_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 3)
            {
                UserGrid userGrid = (UserGrid)grid.Rows[e.RowIndex].DataBoundItem;
                this.Parent.Controls.Add(new ControlEditUser(userGrid.GetUser().Email));
                this.Dispose();
            }
        }

        private void btnEmailList_Click(object sender, EventArgs e)
        {
            List<User> users = new List<User>();

            foreach (var item in Users)
            {
                users.Add(item.GetUser());
            }

            Form form = new FormEmailList(users);
            form.ShowDialog();
        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            Users = new BindingList<UserGrid>();

            Access.Select<User>()
                .Where(a => cbRole.Text.Equals("All Roles") ? true : a.Role.RoleName.Equals(cbRole.Text))
                .Where(a => string.IsNullOrEmpty(tbSearch.Text) ? true : (a.FullName.Contains(tbSearch.Text) || a.Email.Contains(tbSearch.Text)))
                .OrderBy(a => cbRole.Text.Equals("FullName") ? a.FullName : a.Email)
                .ToList()
                .ForEach(a => Users.Add(new UserGrid(a)));

            if (Users.Count > 0) grid.DataSource = Users;
            else MessageBox.Show("0 found items", "0 Items");

            lbTotalUsers.Text = Users.Count.ToString();
        }
    }

    public class UserGrid
    {
        public UserGrid(User user)
        {
            User = user;
            FullName = user.FullName;
            Email = user.Email;
            Role = user.Role.RoleName;
        }

        public string FullName { get; set; }
        public string Email { get; set; }
        public string Role { get; set; }
        private User User { get; set; }
        public string EditButton { get; set; } = "Edit";

        public User GetUser() => User;
    }
}
