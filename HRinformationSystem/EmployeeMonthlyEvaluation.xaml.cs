
using System;
using System.Collections.Generic;
using System.Data;
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
    /// Interaction logic for EmployeeMonthlyEvaluation.xaml
    /// </summary>
    public partial class EmployeeMonthlyEvaluation : Window
    {
        HRISEntities db = new HRISEntities();
        string EmpIDs;
        string EmpIDs1;
        string EmpIDs2;
        public EmployeeMonthlyEvaluation()
        {
            InitializeComponent();
            fillgrid();
        }


        void fillgrid()
        {
            //var res = from a in db.t_EmpMaster
            //          from b in db.t_Department
            //          from c in db.t_DepartmentalSection
            //          from d in db.t_Position
            //          where a.Department == b.DeptCode && a.Department == c.DeptCode && a.Section == c.SectCode && a.Department == d.DeptCode && a.Position == d.Code && a.IsDeleted == false && a.firstevaluation == false
            //          orderby a.SerialID descending
            //          select new { a.EmpPicture, a.EmpID, Fullname = (a.LastName + "," + a.FirstName + " " + a.MiddleName.Substring(0, 1) + "."), b.DeptName, c.SectName, d.Description,a.HireDate };

            //radEmployee1stMonth.ItemsSource = res.ToList();


            radEmployee1stMonth.ItemsSource = db.t_EmpMaster.Where(e => e.firstevaluation == false && e.IsDeleted == false).OrderBy(e => e.SerialID);
            radEmployee3rdMonth.ItemsSource = db.t_EmpMaster.Where(e => e.firstevaluation == true && e.secondevaluation == false && e.IsDeleted == false).OrderBy(e => e.SerialID);
            radEmployee5thMonth.ItemsSource = db.t_EmpMaster.Where(e => e.firstevaluation == true && e.secondevaluation == true && e.thirdevaluation == false && e.IsDeleted == false).OrderBy(e => e.SerialID);
        }

        private void radEmployee1stMonth_RowActivated(object sender, Telerik.Windows.Controls.GridView.RowEventArgs e)
        {

            foreach (var data in radEmployee1stMonth.SelectedItems)
            {
                t_EmpMaster myData = data as t_EmpMaster;
                EmpIDs = myData.EmpID;
            }

            string sMessageBoxText = "Mark as Evaluated";
            string sCaption = "Complete Evaluated? ";

            MessageBoxButton btnMessageBox = MessageBoxButton.YesNo;
            MessageBoxImage icnMessageBox = MessageBoxImage.Warning;

            MessageBoxResult rsltMessageBox = MessageBox.Show(sMessageBoxText, sCaption, btnMessageBox, icnMessageBox);

            switch (rsltMessageBox)
            {
                case MessageBoxResult.Yes:


                    try
                    {
                        t_EmpMaster eval = db.t_EmpMaster.First(p => p.EmpID == EmpIDs.ToString());
                        eval.firstevaluation = true;
                        db.SaveChanges();
                        fillgrid();
                    }
                    catch { }

                    break;

                case MessageBoxResult.No:
                    /* ... */
                    break;

            }
        }

        private void radEmployee3rdMonth_RowActivated(object sender, Telerik.Windows.Controls.GridView.RowEventArgs e)
        {
            foreach (var data in radEmployee3rdMonth.SelectedItems)
            {
                t_EmpMaster myData = data as t_EmpMaster;
                EmpIDs1 = myData.EmpID;
            }


            string sMessageBoxText = "Mark as Evaluated";
            string sCaption = "Complete Evaluated? ";

            MessageBoxButton btnMessageBox = MessageBoxButton.YesNo;
            MessageBoxImage icnMessageBox = MessageBoxImage.Warning;

            MessageBoxResult rsltMessageBox = MessageBox.Show(sMessageBoxText, sCaption, btnMessageBox, icnMessageBox);

            switch (rsltMessageBox)
            {
                case MessageBoxResult.Yes:

                    try
                    {
                        t_EmpMaster eval = db.t_EmpMaster.First(p => p.EmpID == EmpIDs1.ToString());
                        eval.secondevaluation = true;
                        db.SaveChanges();
                        fillgrid();
                    }
                    catch { }

                    break;

                case MessageBoxResult.No:
                    /* ... */
                    break;

            }
        }

        private void radEmployee5thMonth_RowActivated(object sender, Telerik.Windows.Controls.GridView.RowEventArgs e)
        {
            foreach (var data in radEmployee5thMonth.SelectedItems)
            {
                t_EmpMaster myData = data as t_EmpMaster;
                EmpIDs2 = myData.EmpID;
            }

            string sMessageBoxText = "Mark as Evaluated";
            string sCaption = "Complete Evaluated? ";

            MessageBoxButton btnMessageBox = MessageBoxButton.YesNo;
            MessageBoxImage icnMessageBox = MessageBoxImage.Warning;

            MessageBoxResult rsltMessageBox = MessageBox.Show(sMessageBoxText, sCaption, btnMessageBox, icnMessageBox);

            switch (rsltMessageBox)
            {
                case MessageBoxResult.Yes:


                    try
                    {
                        t_EmpMaster eval = db.t_EmpMaster.First(p => p.EmpID == EmpIDs2.ToString());
                        eval.thirdevaluation = true;
                        db.SaveChanges();
                        fillgrid();
                    }
                    catch
                    {

                    }

                    break;

                case MessageBoxResult.No:
                    /* ... */
                    break;

            }
        }

       



    }
}
