using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Data.SqlClient;
using System.Data.Entity.Core.Objects;
using System.Reflection;
using System.IO;

namespace HRinformationSystem
{
    /// <summary>
    /// Interaction logic for UserLogin.xaml
    /// </summary>
    public partial class UserLogin : Window
    {
         HRISEntities db = new HRISEntities();
        public UserLogin()
        {
            InitializeComponent();


            

            //MessageBox.Show(myExeDir);
        }

        void login()
        {
            try
            {
                t_Users newuser = new t_Users();
                var user = db.t_Users.Where(i => i.username == this.username.Text && i.userpass == this.userpass.Password).FirstOrDefault();

                if (user == null)
                {
                    MessageBox.Show("Unable to Login, incorrect credentials.");

                }
                else
                {
                    MainForm UserMain = new MainForm();
                    UserMain.adminusers.Text = username.Text;
                    UserMain.Show();
                    this.Close();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void signin_Click(object sender, RoutedEventArgs e)
        {
            login();
        }

        private void cancel_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            username.Focus();
        }

        private void Window_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                login();
            }
        }
    }
}
