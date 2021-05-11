
using System;
using System.Collections.Generic;
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
using Telerik.Windows.Controls;
using Telerik.Windows.Controls.GridView;

namespace HRinformationSystem
{
    /// <summary>
    /// Interaction logic for Position.xaml
    /// </summary>
    public partial class Position : Window
    {
        HRISEntities db = new HRISEntities();
        string code, desc;
        public Position()
        {
            InitializeComponent();
            Department.ItemsSource = db.t_Department.ToList();
        }

        private void binddatagrid()
        {
            gridPosition.ItemsSource = db.t_Position.Where(t => t.DeptCode == Department.SelectedValue.ToString());
        }

        private void Department_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            binddatagrid();
        }

        private void gridPosition_AddingNewDataItem(object sender, Telerik.Windows.Controls.GridView.GridViewAddingNewEventArgs e)
        {
            try
            {
                var dept = new t_Position();
                dept.Code = code;
                dept.Description = desc;
                dept.DeptCode = Department.SelectedValue.ToString();
                e.NewObject = dept;

                db.t_Position.Add(dept);
            }
            catch
            {
                MessageBox.Show("Select Department");
                Department.ItemsSource = db.t_Department.ToList();
            }
        }

        private void gridPosition_RowEditEnded(object sender, GridViewRowEditEndedEventArgs e)
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
                catch { MessageBox.Show("Invalid"); }



            }
            else if (e.EditOperationType == GridViewEditOperationType.Edit)
            {
                try
                {
                    foreach (var data in gridPosition.SelectedItems)
                    {
                        t_Position myData = data as t_Position;
                        code = myData.Code;
                        desc = myData.Description;

                        t_Position pos = db.t_Position.First(p => p.DeptCode == Department.SelectedValue.ToString() && p.Code == code);
                        pos.Description = desc;

                        db.SaveChanges();
                        binddatagrid();
                    }
                }
                catch { }
            }
        }

        private void gridPosition_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            try
            {

                if (e.Key == Key.Delete)
                {

                    string sMessageBoxText = "Do you want to continue?";
                    string sCaption = "Delete Position";

                    MessageBoxButton btnMessageBox = MessageBoxButton.YesNo;
                    MessageBoxImage icnMessageBox = MessageBoxImage.Warning;

                    MessageBoxResult rsltMessageBox = MessageBox.Show(sMessageBoxText, sCaption, btnMessageBox, icnMessageBox);

                    switch (rsltMessageBox)
                    {
                        case MessageBoxResult.Yes:
                            foreach (var data in gridPosition.SelectedItems)
                            {
                                t_Position pos = data as t_Position;
                                var delete = db.t_Position.Where(p => p.Code == pos.Code && p.DeptCode == Department.SelectedValue.ToString()).FirstOrDefault();
                                db.t_Position.Remove(delete);
                                db.SaveChanges();
                                binddatagrid();
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
