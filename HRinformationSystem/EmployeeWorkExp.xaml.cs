using System;
using System.Collections.Generic;
using System.Data.Entity;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

using Telerik.Windows.Controls.GridView;

namespace HRinformationSystem
{
    /// <summary>
    /// Interaction logic for EmployeeWorkExp.xaml
    /// </summary>
    public partial class EmployeeWorkExp : UserControl
    {
        HRISEntities db = new HRISEntities();

        public EmployeeWorkExp()
        {
            InitializeComponent();
        }

        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            bindWorkExp();
        }

        private void bindWorkExp()
        {
            gridWorkExp.ItemsSource = db.t_EmpWorkExperience.Where(p => p.EmpID == EmpID.Text).ToList();
        }


        private void gridWorkExp_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            try
            {
                if (e.Key == Key.Delete)
                {
                    foreach (var data in gridWorkExp.SelectedItems)
                    {
                        t_EmpWorkExperience myData = data as t_EmpWorkExperience;
                        var delete = db.t_EmpWorkExperience.Where(p => p.EmpID == EmpID.Text && p.CompanyName == myData.CompanyName).FirstOrDefault();
                        db.t_EmpWorkExperience.Remove(delete);
                        db.SaveChanges();
                    }
                    bindWorkExp();
                }
                else { return; }
            }
            catch { }
        }

        string compName;
        string compAddress;
        string compFrom = "01-01-2020";
        string compTo = "01-01-2020";
        string compPosition;
        private void gridWorkExp_AddingNewDataItem(object sender, Telerik.Windows.Controls.GridView.GridViewAddingNewEventArgs e)
        {
            try
            {
                var work = new t_EmpWorkExperience();
                work.EmpID = EmpID.Text;
                work.CompanyName = compName;
                work.CompanyAddress = compAddress;
                work.DateFrom = Convert.ToDateTime(compFrom); ;
                work.DateTo = Convert.ToDateTime(compTo); ;
                work.Position = compPosition;
                work.LastUpdate = DateTime.Now;
                e.NewObject = work;
                db.t_EmpWorkExperience.Add(work);

            }
            catch { }
        }

        private void gridWorkExp_RowEditEnded(object sender, Telerik.Windows.Controls.GridViewRowEditEndedEventArgs e)
        {
            if (e.EditAction == GridViewEditAction.Cancel)
            {
                return;
            }
            if (e.EditOperationType == GridViewEditOperationType.Insert)
            {
                try
                {
                    db.SaveChanges();
                    bindWorkExp();
                }
                catch { }

            }
            else if (e.EditOperationType == GridViewEditOperationType.Edit)
            {
                try
                {
                    foreach (var data in gridWorkExp.SelectedItems)
                    {
                        t_EmpWorkExperience myData = data as t_EmpWorkExperience;
                        compName = myData.CompanyName;
                        compAddress = myData.CompanyAddress;
                        compPosition = myData.Position;
                        compFrom = Convert.ToString(myData.DateFrom);
                        compTo = Convert.ToString(myData.DateTo);
                    }

                    //t_EmpWorkExperience workexp = db.t_EmpWorkExperience.First(p => p.EmpID == EmpID.Text);
                    var workexp = db.t_EmpWorkExperience.Where(p => p.EmpID == EmpID.Text).Where(x => x.CompanyName == compName).FirstOrDefault();
                    //workexp.CompanyName = compName;

                    workexp.CompanyAddress = compAddress;
                    workexp.Position = compPosition;
                    workexp.DateFrom = Convert.ToDateTime(compFrom);
                    workexp.DateTo = Convert.ToDateTime(compTo);
                    db.Entry(workexp).State = EntityState.Modified;
                    db.SaveChanges();
                    bindWorkExp();
                }
                catch { }
            }
        }
    }
}
