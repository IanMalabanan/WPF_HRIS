
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
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
    /// Interaction logic for EmployeeList.xaml
    /// </summary>
    public partial class EmployeeList : Window
    {

        public EmployeeList()
        {
            InitializeComponent();
            getemployeelist();
        }

        private void getemployeelist()
        {


            using (HRISEntities db = new HRISEntities())
            {
                //var empdata = (from e in db.t_EmpMaster
                //               join d in db.t_Department on
                //               e.Department  equals d.DeptCode 
                //               join s in db.t_DepartmentalSection on
                //               e.Section  equals s.SectCode 
                //               join p in db.t_Position on
                //               e.Position  equals p.Code 
                //               where e.IsDeleted == false
                //               select new
                //               {
                //                   newEmpID = e.EmpID,
                //                   newFirstName = e.FirstName,
                //                   newMiddleName = e.MiddleName,
                //                   newLastName = e.LastName,
                //                   newDeptName = d.DeptName,
                //                   newSectName = s.SectName,
                //                   newPosition = p.Description

                //               }).ToList();

                //var query = db.t_EmpMaster.Join(db.t_Position,
                //a => new { key1 = a.Department, key2 = a.Position },
                //b => new { key1 = b.DeptCode, key2 = b.Code },
                // (t1, t2) => new
                //{
                //    t1.EmpID,
                //    t1.FirstName,
                //    t1.MiddleName,
                //    t1.LastName,
                //    t2.Description
                //})
                //;

                var res = from a in db.t_EmpMaster
                          from b in db.t_Department
                          from c in db.t_DepartmentalSection
                          from d in db.t_Position
                          where a.Department == b.DeptCode && a.Department == c.DeptCode
                          && a.Section == c.SectCode && a.Department == d.DeptCode
                          && a.Position == d.Code && a.IsDeleted == false
                          orderby a.SerialID descending
                          select new { a.EmpID, a.FirstName, a.MiddleName, a.LastName, b.DeptName, c.SectName, d.Description, a.InitialEntryBy };

                //SqlCommand cmd = new SqlCommand("SKPI_GetAllEmployees");
                //cmd.CommandType = System.Data.CommandType.StoredProcedure;
                gridEmployee.ItemsSource = //SqlHelper.ExecuteReader(ConfigurationManager.ConnectionStrings["HRIS"].ConnectionString, cmd); //
                res.ToList();

                //var results = (from e in db.t_EmpMaster
                //              join d in db.t_Department on e.Department equals d.DeptCode 
                //              join s in db.t_DepartmentalSection on new { e.Section, d.DeptCode } equals new { s.SectCode, s.DeptCode }
                //              join p in db.t_Position on new { e.Position, e.Department } equals new { p.Code, p.DeptCode }

                //              select new
                //              {
                //                  EmpID = e.EmpID,
                //                  FirstName = e.FirstName,
                //                  MiddleName = e.MiddleName,
                //                  LastName = e.LastName,
                //                  DeptName = d.DeptName,
                //                  SectName = s.SectName,
                //                  Position = p.Description
                //              });

                //gridEmployee.ItemsSource = results.ToList();
            }

        }

        private void btnadd_maindata_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
            AddNewEmployee AddNewEmployee = new AddNewEmployee();
            AddNewEmployee.adminusers.Text = adminusers.Text;
            AddNewEmployee.ShowDialog();
        }


        public TextBox EmpID { get; set; }

        private void Btnrefresh_Click(object sender, RoutedEventArgs e)
        {
            getemployeelist();

            MessageBox.Show("Records have been refreshed");
        }
    }
}
