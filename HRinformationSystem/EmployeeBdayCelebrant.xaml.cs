
using System;
using System.Collections.Generic;
using System.Drawing.Printing;
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
using Telerik.Windows.Controls.GridView;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace HRinformationSystem
{
    /// <summary>
    /// Interaction logic for EmployeeBdayCelebrant.xaml
    /// </summary>
    public partial class EmployeeBdayCelebrant : Window
    {
        HRISEntities db = new HRISEntities();

        public EmployeeBdayCelebrant()
        {
            InitializeComponent();
            bindCombo();
            binddatagrid();            
        }

        private void bindCombo()
        {
            string query = "DECLARE @Date DATE = GETDATE(), " +
                            
                            "@inc INT = 0 " +
                            
                            "; with cte as " +
                            
                            "( " +
                            
                            "SELECT Inc = @inc " +
                            
                            ",[Month_Name] = DATENAME(mm , @Date) " +
                            
                            ",[Month_Number] = DATEPART(mm , @Date) " +

                            "UNION ALL " +

                            "SELECT inc + 1 " +
                            
                            ", DATENAME(mm, DATEADD(mm, inc + 1, @Date)) " +
                            
                            ", DATEPART(mm, DATEADD(mm, inc + 1, @Date)) " +

                            "FROM cte " +

                            "WHERE inc< 12  " +
	                        
                            ") " +

                            "select[Month_Name], [Month_Number] from cte " +


                            "group by [Month_Name], [Month_Number] " +

                            
                            "oRDER BY Month_NUMBER ASC";


            SqlCommand cmd = new SqlCommand(query);

            cmd.CommandType = System.Data.CommandType.Text;

            cboMonth.ItemsSource = SqlHelper.ExecuteReader(ConfigurationManager.ConnectionStrings["HRIS"].ConnectionString,cmd).DefaultView;
            
            cboMonth.SelectedValue = DateTime.Now.Month;


        }

        private void binddatagrid()
        {
            int _month = Convert.ToInt32(cboMonth.SelectedValue);

            var res = from a in db.t_EmpMaster
                      from b in db.t_Department
                      from c in db.t_DepartmentalSection
                      from d in db.t_Position
                      where a.Department == b.DeptCode && a.Department == c.DeptCode && a.Section == c.SectCode && a.Department == d.DeptCode && a.Position == d.Code && a.BirthDate.Value.Month == _month && a.IsDeleted == false
                      orderby a.BirthDate.Value.Day ascending
                      select new { a.EmpPicture, a.EmpID, Fullname = (a.LastName + ", " + a.FirstName + " " + a.MiddleName.Substring(0, 1) + "."), b.DeptName, c.SectName, a.BirthDate };

            gridEmployeeBdayCelebrant.ItemsSource = res.ToList();
        }

        private void CboMonth_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            binddatagrid();
        }
    }
}
