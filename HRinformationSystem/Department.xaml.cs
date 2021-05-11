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
using Telerik.Windows.Controls;
using Telerik.Windows.Controls.GridView;

namespace HRinformationSystem
{
    /// <summary>
    /// Interaction logic for Department.xaml
    /// </summary>
    public partial class Department : Window
    {
        HRISEntities db = new HRISEntities();
        public Department()
        {
            InitializeComponent();
            binddatagrid();
        }

        private void binddatagrid()
        {
            gridDepartment.ItemsSource = db.t_Department.ToList();
        }

        private void gridDepartment_AddingNewDataItem(object sender, GridViewAddingNewEventArgs e)
        {
            var dept = new t_Department();
            dept.DeptCode = deptcode;
            dept.DeptName = depdesc;
            e.NewObject = dept;

            db.t_Department.Add(dept);
            
        }
        string deptcode, depdesc;
        private void gridDepartment_RowEditEnded(object sender, GridViewRowEditEndedEventArgs e)
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
                    binddatagrid();
                }
                catch { MessageBox.Show("already exist"); }
            } 
            else if(e.EditOperationType == GridViewEditOperationType.Edit)
            {
                try
                {
                    foreach (var data in gridDepartment.SelectedItems)
                    {
                        t_Department myData = data as t_Department;
                        deptcode = myData.DeptCode;
                        depdesc = myData.DeptName;

                        t_Department dept = db.t_Department.First(p => p.DeptCode == deptcode);
                        dept.DeptName = depdesc;
                        db.SaveChanges();
                        binddatagrid();
                    }
                }
                catch { }
            }
        }

        private void gridDepartment_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            try
            {

                if (e.Key == Key.Delete)
                {

                    string sMessageBoxText = "Do you want to continue?";
                    string sCaption = "Delete Department";

                    MessageBoxButton btnMessageBox = MessageBoxButton.YesNo;
                    MessageBoxImage icnMessageBox = MessageBoxImage.Warning;

                    MessageBoxResult rsltMessageBox = MessageBox.Show(sMessageBoxText, sCaption, btnMessageBox, icnMessageBox);

                    switch (rsltMessageBox)
                    {
                        case MessageBoxResult.Yes:
                            foreach (var data in gridDepartment.SelectedItems)
                            {
                                t_Department myData = data as t_Department;
                                var deleteuser = db.t_Department.Where(DeptCode => DeptCode.DeptCode == myData.DeptCode).FirstOrDefault();
                                db.t_Department.Remove(deleteuser);
                                db.SaveChanges();
                            }
                            break;

                        case MessageBoxResult.No:
                            /* ... */
                            break;

                    }

                }

                else
                {
                    return;
                }
            }
            catch { }
        }



    }
}
