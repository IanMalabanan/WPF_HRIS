
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
    /// Interaction logic for Section.xaml
    /// </summary>
    public partial class Section : Window
    {
        HRISEntities db = new HRISEntities();
        string sectcode, sectname;
        public Section()
        {
            InitializeComponent();
            Department.ItemsSource = db.t_Department.ToList();
        }

        private void binddatagrid()
        {
            gridSection.ItemsSource = db.t_DepartmentalSection.Where(t => t.DeptCode == Department.SelectedValue.ToString());
        }


        private void gridSection_AddingNewDataItem(object sender, Telerik.Windows.Controls.GridView.GridViewAddingNewEventArgs e)
        {
            try
            {
                var sect = new t_DepartmentalSection();
                sect.SectCode = sectcode;
                sect.SectName = sectname;
                sect.DeptCode = Department.SelectedValue.ToString();
                e.NewObject = sect;

                db.t_DepartmentalSection.Add(sect);
            }
            catch
            {
                MessageBox.Show("Select Department");
                Department.ItemsSource = db.t_Department.ToList();
            }
        }

        private void gridSection_RowEditEnded(object sender, Telerik.Windows.Controls.GridViewRowEditEndedEventArgs e)
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
                    foreach (var data in gridSection.SelectedItems)
                    {
                        t_DepartmentalSection myData = data as t_DepartmentalSection;
                        sectcode = myData.SectCode;
                        sectname = myData.SectName;

                        t_DepartmentalSection sec = db.t_DepartmentalSection.First(p => p.DeptCode == Department.SelectedValue.ToString() && p.SectCode == sectcode);
                        sec.SectName = sectname;

                        db.SaveChanges();
                        binddatagrid();
                    }
                }
                catch { }
            }
        }

        private void gridSection_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            try
            {
                if (e.Key == Key.Delete)
                {
                    string sMessageBoxText = "Do you want to continue?";
                    string sCaption = "Delete Section";

                    MessageBoxButton btnMessageBox = MessageBoxButton.YesNo;
                    MessageBoxImage icnMessageBox = MessageBoxImage.Warning;

                    MessageBoxResult rsltMessageBox = MessageBox.Show(sMessageBoxText, sCaption, btnMessageBox, icnMessageBox);

                    switch (rsltMessageBox)
                    {
                        case MessageBoxResult.Yes:
                            foreach (var data in gridSection.SelectedItems)
                            {
                                t_DepartmentalSection sec = data as t_DepartmentalSection;
                                var delete = db.t_DepartmentalSection.Where(p => p.SectCode == sec.SectCode && p.DeptCode == Department.SelectedValue.ToString()).FirstOrDefault();
                                db.t_DepartmentalSection.Remove(delete);
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

        private void Department_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            binddatagrid();
        }

    }
}
