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

namespace HRinformationSystem
{
    /// <summary>
    /// Interaction logic for MainForm.xaml
    /// </summary>
    public partial class MainForm : Window
    {
        public MainForm()
        {
            InitializeComponent();
        }

        private void btnclose_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void Tile_MouseDown(object sender, MouseButtonEventArgs e)
        {
            EmployeeList EmployeeList = new EmployeeList();

            EmployeeList.adminusers.Text = adminusers.Text;

            EmployeeList.ShowDialog();
        }

        private void Tile_MouseDown_1(object sender, MouseButtonEventArgs e)
        {
            Department Department = new Department();

            Department.ShowDialog();
        }

        private void Tile_MouseDown_2(object sender, MouseButtonEventArgs e)
        {
            Position Position = new Position();

            Position.ShowDialog();
        }

        private void Tile_MouseDown_3(object sender, MouseButtonEventArgs e)
        {
            Section Section = new Section();

            Section.ShowDialog();
        }

        private void Tile_MouseDown_9(object sender, MouseButtonEventArgs e)
        {
            CreateEmpoyeeID CreateEmpoyeeID = new CreateEmpoyeeID();

            CreateEmpoyeeID.ShowDialog();
        }

        private void Tile_MouseDown_10(object sender, MouseButtonEventArgs e)
        {
            EmployeeReClass EmployeeReClass = new EmployeeReClass();

            EmployeeReClass.ShowDialog();
        }

        private void Tile_MouseDown_11(object sender, MouseButtonEventArgs e)
        {
            EmployeeBdayCelebrant EmployeeBdayCelebrant = new EmployeeBdayCelebrant();

            EmployeeBdayCelebrant.ShowDialog();
        }

        private void Tile_MouseDown_12(object sender, MouseButtonEventArgs e)
        {
            EmployeeMonthlyEvaluation EmployeeMonthlyEvaluation = new EmployeeMonthlyEvaluation();

            EmployeeMonthlyEvaluation.ShowDialog();
        }

        //private void Tile_MouseDown_13(object sender, MouseButtonEventArgs e)
        //{
        //    OLwindow OLwindow = new OLwindow();
        //    OLwindow.Show();
        //}

        private void Tile_MouseDown_4(object sender, MouseButtonEventArgs e)
        {
            ShuttleDestination ShuttleDestination = new ShuttleDestination();

            ShuttleDestination.ShowDialog();
        }

        private void Tile_MouseDown_5(object sender, MouseButtonEventArgs e)
        {
            HRiSUsers HRiSUsers = new HRiSUsers();
            HRiSUsers.ShowDialog();
        }

        private void Tile_MouseDown_6(object sender, MouseButtonEventArgs e)
        {
            AboutSystem AboutSystem = new AboutSystem();

            AboutSystem.ShowDialog();
        }

        //private void Window_Loaded(object sender, RoutedEventArgs e)
        //{

        //    if (userstype.Text == "1")
        //    {
        //        newuserbox.Visibility = Visibility.Visible;
        //        departmentbox.Visibility = Visibility.Visible;
        //        positionbox.Visibility = Visibility.Visible;
        //        sectionbox.Visibility = Visibility.Visible;
        //    }
        //}

        private void Tile_MouseDown_7(object sender, MouseButtonEventArgs e)
        {
            Archive Archive = new Archive();

            Archive.ShowDialog();
        }

        private void Tile_MouseDown_8(object sender, MouseButtonEventArgs e)
        {
            COE_Creation frm = new COE_Creation();

            frm.ShowDialog();
        }

        private void BtnMinimize_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        //private void Tile_MouseDown_8(object sender, MouseButtonEventArgs e)
        //{
        //    EmployeeOutgoing EmployeeOutgoing = new EmployeeOutgoing();
        //    EmployeeOutgoing.ShowDialog();
        //}

    }
}
